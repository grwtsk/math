# IsUnramifiedAt.residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75056e6ceb434df880749841a750ef22486580d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5b90082-f462-9591-97f4-c85e646b8bca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1da126e1-a633-335b-1307-bc8eaf23b46e",
  "kind": "theorem",
  "lexical_name": "IsUnramifiedAt.residueField",
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
  "slug": "isunramifiedat-residuefield--7a9fd7d24cc07befa4042f30",
  "source": {
    "blob": "75056e6ceb434df880749841a750ef22486580d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a9fd7d24cc07befa4042f30e44456c0d02126860bc8d89d65af59eb65ea2ade",
  "verification": {
    "reference": "docs/verification/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da126e1-a633-335b-1307-bc8eaf23b46e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUnramifiedAt.residueField
    (P : Ideal R) [P.IsPrime] (Q : Ideal A) [Q.IsPrime]
    [Q.LiesOver P] [Algebra.IsUnramifiedAt R Q]
    (Q' : Ideal (P.Fiber A)) [Q'.IsPrime]
    (hQ' : Q = Q'.comap Algebra.TensorProduct.includeRight.toRingHom) :
    IsUnramifiedAt P.ResidueField Q' := by
  let f₀ : Localization.AtPrime Q →ₐ[R] Localization.AtPrime Q' :=
    Localization.localAlgHom Q Q' _ hQ'
  have hf₀ : Function.Surjective f₀ := by
    subst hQ'; exact P.surjectiveOnStalks_residueField.baseChange' _ _
  let f : P.Fiber (Localization.AtPrime Q) →ₐ[P.ResidueField] Localization.AtPrime Q' :=
    Algebra.TensorProduct.lift (Algebra.ofId _ _) f₀ fun _ _ ↦ .all _ _
  have hf : Function.Surjective f := hf₀.forall.mpr fun x ↦ ⟨1 ⊗ₜ x, by simp [f]⟩
  exact .of_surjective _ hf

end

section IsUnramifiedIn

variable {R : Type*} [CommRing R]

/-- A prime `𝔭` of `R` is unramified in `A` if every prime ideal `𝔓` of `A` lying over `𝔭` is
unramified . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locus/Variant0286d8d1622b69a6a6e098fa3a3cf21b2eb2deda26ad7b735480e67d96bf898a.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75056e6ceb434df880749841a750ef22486580d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
