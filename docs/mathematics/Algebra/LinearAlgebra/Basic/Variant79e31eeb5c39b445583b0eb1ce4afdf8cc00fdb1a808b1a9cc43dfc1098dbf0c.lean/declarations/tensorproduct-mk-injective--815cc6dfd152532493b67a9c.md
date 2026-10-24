# tensorProduct_mk_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b73907e5-569c-a6bb-cb60-b816b40b76af",
  "kind": "lemma",
  "lexical_name": "tensorProduct_mk_injective",
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
  "slug": "tensorproduct-mk-injective--815cc6dfd152532493b67a9c",
  "source": {
    "blob": "f17ec10cf8724970eb2b234501ecf13949b5dc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 266,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815cc6dfd152532493b67a9c72e693c98121fafe0b7397025777f4c9895f4a8b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b73907e5-569c-a6bb-cb60-b816b40b76af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorProduct_mk_injective [FaithfulSMul R S] [Flat R M] :
    Injective (TensorProduct.mk R S M 1) := by
  have : TensorProduct.mk R S M 1 =
      (Algebra.linearMap R S).rTensor M ∘ (TensorProduct.lid R M).symm := by ext; simp
  rw [this]
  refine Injective.comp ?_ (LinearEquiv.injective _)
  exact Flat.rTensor_preserves_injective_linearMap _ <| FaithfulSMul.algebraMap_injective R S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17ec10cf8724970eb2b234501ecf13949b5dc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
