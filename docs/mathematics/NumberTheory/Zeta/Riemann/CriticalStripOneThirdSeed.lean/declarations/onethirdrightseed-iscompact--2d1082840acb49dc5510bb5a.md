# oneThirdRightSeed_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3ffda58-b168-e759-58f9-6029055d2834",
  "kind": "lemma",
  "lexical_name": "oneThirdRightSeed_isCompact",
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
  "slug": "onethirdrightseed-iscompact--2d1082840acb49dc5510bb5a",
  "source": {
    "blob": "75222568f79145d34e68d7fc218c3d17398ef691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 151,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d1082840acb49dc5510bb5a7b789de960349da93e12a85d66d62fb06b401f39",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3ffda58-b168-e759-58f9-6029055d2834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma oneThirdRightSeed_isCompact : IsCompact oneThirdRightSeed := by
  have hclosed : IsClosed oneThirdRightSeed := by
    change IsClosed ({s : ℂ | (1 / 2 : ℝ) ≤ s.re} ∩
      ({s : ℂ | s.re ≤ 1} ∩ {s : ℂ | |s.im| ≤ (1 / 3 : ℝ)}))
    exact (isClosed_le continuous_const Complex.continuous_re).inter
      ((isClosed_le Complex.continuous_re continuous_const).inter
        (isClosed_le Complex.continuous_im.abs continuous_const))
  apply (isCompact_closedBall (0 : ℂ) (2 : ℝ)).of_isClosed_subset hclosed
  intro z hz
  change (1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 ∧ |z.im| ≤ (1 / 3 : ℝ) at hz
  rw [Metric.mem_closedBall, dist_zero_right]
  have h := Complex.norm_le_abs_re_add_abs_im z
  rw [abs_of_nonneg (by linarith [hz.1] : 0 ≤ z.re)] at h
  linarith [hz.2.1, hz.2.2]

/-- Compact patch extraction is used only AFTER the actual analytic nonvanishing
has been proved. This is classical finite existence, not generated rational data
and not an already accepted input to the rational bounded-search algorithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75222568f79145d34e68d7fc218c3d17398ef691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
