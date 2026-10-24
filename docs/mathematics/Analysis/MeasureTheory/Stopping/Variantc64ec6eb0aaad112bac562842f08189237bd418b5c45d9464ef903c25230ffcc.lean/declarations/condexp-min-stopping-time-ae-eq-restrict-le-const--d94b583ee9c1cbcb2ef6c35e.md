# condExp_min_stopping_time_ae_eq_restrict_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13ae1def23dbeff858042e0c0abe282165954fd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1076,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5ae7028-7dc5-1d4b-9312-94f88c3e95df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87189127-934a-ae5b-8358-f5a8e335784e",
  "kind": "theorem",
  "lexical_name": "condExp_min_stopping_time_ae_eq_restrict_le_const",
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
  "slug": "condexp-min-stopping-time-ae-eq-restrict-le-const--d94b583ee9c1cbcb2ef6c35e",
  "source": {
    "blob": "13ae1def23dbeff858042e0c0abe282165954fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1093,
    "line": 1076,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d94b583ee9c1cbcb2ef6c35e37eb6f8e63da318f8114487b87890be0834a988e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87189127-934a-ae5b-8358-f5a8e335784e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1076–1093.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_min_stopping_time_ae_eq_restrict_le_const (hτ : IsStoppingTime ℱ τ) (i : ι)
    [SigmaFinite (μ.trim (hτ.min_const i).measurableSpace_le)] :
    μ[f|(hτ.min_const i).measurableSpace] =ᵐ[μ.restrict {x | τ x ≤ i}] μ[f|hτ.measurableSpace] := by
  have : SigmaFinite (μ.trim hτ.measurableSpace_le) :=
    haveI h_le : (hτ.min_const i).measurableSpace ≤ hτ.measurableSpace := by
      rw [IsStoppingTime.measurableSpace_min_const]
      exact inf_le_left
    sigmaFiniteTrim_mono _ h_le
  refine (condExp_ae_eq_restrict_of_measurableSpace_eq_on hτ.measurableSpace_le
    (hτ.min_const i).measurableSpace_le (hτ.measurableSet_le' i) fun t => ?_).symm
  rw [Set.inter_comm _ t, hτ.measurableSet_inter_le_const_iff]

@[deprecated (since := "2025-01-21")]
alias condexp_min_stopping_time_ae_eq_restrict_le_const :=
  condExp_min_stopping_time_ae_eq_restrict_le_const

variable [TopologicalSpace ι] [OrderTopology ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean#L1076).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ae1def23dbeff858042e0c0abe282165954fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
