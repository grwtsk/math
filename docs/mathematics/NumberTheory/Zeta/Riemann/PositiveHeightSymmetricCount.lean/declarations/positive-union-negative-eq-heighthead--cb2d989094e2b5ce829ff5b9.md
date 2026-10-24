# positive_union_negative_eq_heightHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8a6c679-c23e-2cc7-5391-2c50537efd02",
  "kind": "theorem",
  "lexical_name": "positive_union_negative_eq_heightHead",
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
  "slug": "positive-union-negative-eq-heighthead--cb2d989094e2b5ce829ff5b9",
  "source": {
    "blob": "306e543adc2f0854b4bf1bcb8eed83664d829b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb2d989094e2b5ce829ff5b9edff9e5c1a47410a1b1ffb7a325e5708cb5454d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8a6c679-c23e-2cc7-5391-2c50537efd02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_union_negative_eq_heightHead (T : ℝ) :
    positiveHeightHead T ∪ negativeHeightHead T = heightHead T := by
  classical
  ext z
  constructor
  · intro hz
    rcases Finset.mem_union.mp hz with hp | hn
    · rcases (mem_positiveHeightHead T z).mp hp with ⟨positive, upper⟩
      apply (mem_heightHead T z).mpr
      simpa only [height, abs_of_pos positive] using upper
    · rcases (mem_negativeHeightHead T z).mp hn with ⟨negative, upper⟩
      apply (mem_heightHead T z).mpr
      simpa only [height, abs_of_neg negative] using upper
  · intro hz
    have heightBound := (mem_heightHead T z).mp hz
    have nonzero := CriticalStripHeightDescent.nontrivialZetaZero_im_ne_zero z.2
    by_cases positive : 0 < z.1.im
    · apply Finset.mem_union.mpr
      left
      apply (mem_positiveHeightHead T z).mpr
      exact ⟨positive, by
        simpa only [height, abs_of_pos positive] using heightBound⟩
    · have negative : z.1.im < 0 :=
        lt_of_le_of_ne (le_of_not_gt positive) nonzero
      apply Finset.mem_union.mpr
      right
      apply (mem_negativeHeightHead T z).mpr
      exact ⟨negative, by
        simpa only [height, abs_of_neg negative] using heightBound⟩

/-- Exact conversion between the repository's both-sign count and standard positive-height count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightSymmetricCount.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `306e543adc2f0854b4bf1bcb8eed83664d829b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
