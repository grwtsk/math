# condExp_stopping_time_ae_eq_restrict_eq_of_countable_range

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
      "line": 1051,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8a58b79-e2f5-65f2-9f40-75ff3b2d99a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc61f105-99f4-e80f-65e3-b2ca0446236b",
  "kind": "theorem",
  "lexical_name": "condExp_stopping_time_ae_eq_restrict_eq_of_countable_range",
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
  "slug": "condexp-stopping-time-ae-eq-restrict-eq-of-countable-range--73aa80c4504c9645e4f0967a",
  "source": {
    "blob": "13ae1def23dbeff858042e0c0abe282165954fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1063,
    "line": 1051,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73aa80c4504c9645e4f0967a67dc6798012711f39512603f410e86c032799eb7",
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

Occurrence: `result:bc61f105-99f4-e80f-65e3-b2ca0446236b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1051–1063.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stopping_time_ae_eq_restrict_eq_of_countable_range [SigmaFiniteFiltration μ ℱ]
    (hτ : IsStoppingTime ℱ τ) (h_countable : (Set.range τ).Countable)
    [SigmaFinite (μ.trim (hτ.measurableSpace_le_of_countable_range h_countable))] (i : ι) :
    μ[f|hτ.measurableSpace] =ᵐ[μ.restrict {x | τ x = i}] μ[f|ℱ i] := by
  refine condExp_ae_eq_restrict_of_measurableSpace_eq_on
    (hτ.measurableSpace_le_of_countable_range h_countable) (ℱ.le i)
    (hτ.measurableSet_eq_of_countable_range' h_countable i) fun t => ?_
  rw [Set.inter_comm _ t, IsStoppingTime.measurableSet_inter_eq_iff]

@[deprecated (since := "2025-01-21")]
alias condexp_stopping_time_ae_eq_restrict_eq_of_countable_range :=
  condExp_stopping_time_ae_eq_restrict_eq_of_countable_range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean#L1051).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ae1def23dbeff858042e0c0abe282165954fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
