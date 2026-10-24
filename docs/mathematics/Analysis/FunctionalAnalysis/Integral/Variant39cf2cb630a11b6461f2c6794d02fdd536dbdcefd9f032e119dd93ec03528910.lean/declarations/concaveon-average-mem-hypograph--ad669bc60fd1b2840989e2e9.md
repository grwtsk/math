# ConcaveOn.average_mem_hypograph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "420e844d167c2de565c57c154c88446a3f7ba8d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65bcc5f3-3e12-7fb5-af20-f202430e2c55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c90d98ae-09a8-e5bd-a7ac-05322f62d564",
  "kind": "theorem",
  "lexical_name": "ConcaveOn.average_mem_hypograph",
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
  "slug": "concaveon-average-mem-hypograph--ad669bc60fd1b2840989e2e9",
  "source": {
    "blob": "420e844d167c2de565c57c154c88446a3f7ba8d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad669bc60fd1b2840989e2e90b7c7cc8b4df016f8652806826234e6904cee154",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90d98ae-09a8-e5bd-a7ac-05322f62d564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConcaveOn.average_mem_hypograph [IsFiniteMeasure μ] [NeZero μ] (hg : ConcaveOn ℝ s g)
    (hgc : ContinuousOn g s) (hsc : IsClosed s) (hfs : ∀ᵐ x ∂μ, f x ∈ s)
    (hfi : Integrable f μ) (hgi : Integrable (g ∘ f) μ) :
    (⨍ x, f x ∂μ, ⨍ x, g (f x) ∂μ) ∈ {p : E × ℝ | p.1 ∈ s ∧ p.2 ≤ g p.1} := by
  simpa only [mem_setOf_eq, Pi.neg_apply, average_neg, neg_le_neg_iff] using
    hg.neg.average_mem_epigraph hgc.neg hsc hfs hfi hgi.neg
#align concave_on.average_mem_hypograph ConcaveOn.average_mem_hypograph

/-- **Jensen's inequality**: if a function `g : E → ℝ` is convex and continuous on a convex closed
set `s`, `μ` is a finite non-zero measure on `α`, and `f : α → E` is a function sending
`μ`-a.e. points to `s`, then the value of `g` at the average value of `f` is less than or equal to
the average value of `g ∘ f` provided that both `f` and `g ∘ f` are integrable. See also
`ConvexOn.map_centerMass_le` for a finite sum version of this lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420e844d167c2de565c57c154c88446a3f7ba8d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
