# Submodule.iSup_eq_toSubmodule_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "322c52717a8b574dce9b626c096df60623ab4fd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b703086d-61de-0ce6-3eb0-7a5f00157d1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f697462-fcde-beca-6198-ac012e0672e5",
  "kind": "theorem",
  "lexical_name": "Submodule.iSup_eq_toSubmodule_range",
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
  "slug": "submodule-isup-eq-tosubmodule-range--6e2a895a487fd051aa127965",
  "source": {
    "blob": "322c52717a8b574dce9b626c096df60623ab4fd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 312,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e2a895a487fd051aa1279656a8bec39c71cb414454871011408f8983f52d314",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f697462-fcde-beca-6198-ac012e0672e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.iSup_eq_toSubmodule_range [AddMonoid ι] [CommSemiring S] [Semiring R]
    [Algebra S R] (A : ι → Submodule S R) [SetLike.GradedMonoid A] :
    ⨆ i, A i = Subalgebra.toSubmodule (DirectSum.coeAlgHom A).range :=
  (Submodule.iSup_eq_range_dfinsupp_lsum A).trans <| SetLike.coe_injective rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant9c70d1bd8d0ee5aa7d97de907e3b054aca3d97fcd10e99acc322d59d65662362.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `322c52717a8b574dce9b626c096df60623ab4fd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
