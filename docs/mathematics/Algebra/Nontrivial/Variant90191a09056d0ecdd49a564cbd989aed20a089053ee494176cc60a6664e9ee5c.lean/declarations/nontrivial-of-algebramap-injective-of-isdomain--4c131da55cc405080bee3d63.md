# nontrivial_of_algebraMap_injective_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c78b9bdcadd72ee59c7c104250c6ec24614e0a74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:087811ea-d50b-d11e-3b00-4ce76123476c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe49f735-64ec-4c21-855f-5172826c2055",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_algebraMap_injective_of_isDomain",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "nontrivial-of-algebramap-injective-of-isdomain--4c131da55cc405080bee3d63",
  "source": {
    "blob": "c78b9bdcadd72ee59c7c104250c6ec24614e0a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/Algebra/Nontrivial/Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c131da55cc405080bee3d632b91c4c1211e1046029100e4f5cc6942438e2bd2",
  "verification": {
    "reference": "docs/verification/Algebra/Nontrivial/Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe49f735-64ec-4c21-855f-5172826c2055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_algebraMap_injective_of_isDomain
    (R A B : Type*) [CommRing R] [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]
    (ha : Function.Injective (algebraMap R A)) (hb : Function.Injective (algebraMap R B))
    [IsDomain A] [IsDomain B] : Nontrivial (A ⊗[R] B) := by
  haveI := ha.isDomain _
  let FR := FractionRing R
  let FA := FractionRing A
  let FB := FractionRing B
  let fa : FR →ₐ[R] FA := IsFractionRing.liftAlgHom (g := Algebra.ofId R FA)
    ((IsFractionRing.injective A FA).comp ha)
  let fb : FR →ₐ[R] FB := IsFractionRing.liftAlgHom (g := Algebra.ofId R FB)
    ((IsFractionRing.injective B FB).comp hb)
  algebraize_only [fa.toRingHom, fb.toRingHom]
  exact Algebra.TensorProduct.mapOfCompatibleSMul FR R FA FB |>.comp
    (Algebra.TensorProduct.map (IsScalarTower.toAlgHom R A FA) (IsScalarTower.toAlgHom R B FB))
    |>.toRingHom.domain_nontrivial

end Algebra.TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nontrivial/Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nontrivial/Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c78b9bdcadd72ee59c7c104250c6ec24614e0a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
