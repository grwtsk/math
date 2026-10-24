# hasIntegral_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8756ab42-3396-0436-4762-7d0bf2fb969a",
  "kind": "theorem",
  "lexical_name": "hasIntegral_iff",
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
  "slug": "hasintegral-iff--508372fadf8205db6897127a",
  "source": {
    "blob": "6098dac7fbdb5c9e227e6daf427dac61b577eb6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:508372fadf8205db6897127ae8c943d8b1c319b0a29a340ec7f2bd70c0cf437f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8756ab42-3396-0436-4762-7d0bf2fb969a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasIntegral_iff : HasIntegral I l f vol y ↔
    ∀ ε > (0 : ℝ), ∃ r : ℝ≥0 → ℝⁿ → Ioi (0 : ℝ), (∀ c, l.RCond (r c)) ∧
      ∀ c π, l.MemBaseSet I c (r c) π → IsPartition π → dist (integralSum f vol π) y ≤ ε :=
  ((l.hasBasis_toFilteriUnion_top I).tendsto_iff nhds_basis_closedBall).trans <| by
    simp [@forall_swap ℝ≥0 (TaggedPrepartition I)]
#align box_integral.has_integral_iff BoxIntegral.hasIntegral_iff

/-- Quite often it is more natural to prove an estimate of the form `a * ε`, not `ε` in the RHS of
`BoxIntegral.hasIntegral_iff`, so we provide this auxiliary lemma.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6098dac7fbdb5c9e227e6daf427dac61b577eb6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
