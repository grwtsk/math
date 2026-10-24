# AbsolutelyContinuous.compProd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9860f1861ebbe367c9ae65fd453bb66db0e247ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cb527a1-c43b-f981-2476-fd2a7b7ae053",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8c86505-96a4-c672-2d58-1ef6bd2183c0",
  "kind": "lemma",
  "lexical_name": "AbsolutelyContinuous.compProd_left",
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
  "slug": "absolutelycontinuous-compprod-left--cc64fb9235a001358935c32e",
  "source": {
    "blob": "9860f1861ebbe367c9ae65fd453bb66db0e247ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 221,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc64fb9235a001358935c32e57ff9fa0ae0b9edacc25e9c2f68621f5ec14187c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8c86505-96a4-c672-2d58-1ef6bd2183c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AbsolutelyContinuous.compProd_left [SFinite ν] (hμν : μ ≪ ν) (κ : Kernel α β) :
    μ ⊗ₘ κ ≪ ν ⊗ₘ κ := by
  by_cases hκ : IsSFiniteKernel κ
  · have : SFinite μ := sFinite_of_absolutelyContinuous hμν
    refine Measure.AbsolutelyContinuous.mk fun s hs hs_zero ↦ ?_
    rw [Measure.compProd_apply hs, lintegral_eq_zero_iff (Kernel.measurable_kernel_prodMk_left hs)]
      at hs_zero ⊢
    exact hμν.ae_eq hs_zero
  · simp [compProd_of_not_isSFiniteKernel _ _ hκ]

@[deprecated (since := "2024-12-11")]
alias absolutelyContinuous_compProd_left := AbsolutelyContinuous.compProd_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant17873fd9fc1c2b3b833983561355663f29215fa3ab246db63f533f426aa21338.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9860f1861ebbe367c9ae65fd453bb66db0e247ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
