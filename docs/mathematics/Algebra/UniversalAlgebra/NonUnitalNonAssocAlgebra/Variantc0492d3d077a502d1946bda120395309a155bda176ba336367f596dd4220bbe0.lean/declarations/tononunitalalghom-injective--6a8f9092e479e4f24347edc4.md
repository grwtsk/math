# toNonUnitalAlgHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f974d1d-b186-f27e-eac3-b15f8866f1b7",
  "kind": "theorem",
  "lexical_name": "toNonUnitalAlgHom_injective",
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
  "slug": "tononunitalalghom-injective--6a8f9092e479e4f24347edc4",
  "source": {
    "blob": "739af6eb8885da53d944a57a2223e7e13506dea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 106,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc0492d3d077a502d1946bda120395309a155bda176ba336367f596dd4220bbe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8f9092e479e4f24347edc48d5ca0607b1fe65c0b7fc70b1f0360f06190ba90",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc0492d3d077a502d1946bda120395309a155bda176ba336367f596dd4220bbe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f974d1d-b186-f27e-eac3-b15f8866f1b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNonUnitalAlgHom_injective :
    Function.Injective (toNonUnitalAlgHom : _ → CommutatorRing L →ₙₐ[R] CommutatorRing L₂) :=
  fun _ _ h => ext <| NonUnitalAlgHom.congr_fun h
#align lie_hom.to_non_unital_alg_hom_injective LieHom.toNonUnitalAlgHom_injective

end LieHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc0492d3d077a502d1946bda120395309a155bda176ba336367f596dd4220bbe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variantc0492d3d077a502d1946bda120395309a155bda176ba336367f596dd4220bbe0.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `739af6eb8885da53d944a57a2223e7e13506dea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
