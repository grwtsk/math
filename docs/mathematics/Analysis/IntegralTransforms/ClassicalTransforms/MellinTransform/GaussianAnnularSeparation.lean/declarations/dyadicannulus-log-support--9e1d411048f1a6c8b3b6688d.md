# dyadicAnnulus_log_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dd236d9-a297-e408-e3e1-51139cc1e6b3",
  "kind": "lemma",
  "lexical_name": "dyadicAnnulus_log_support",
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
  "slug": "dyadicannulus-log-support--9e1d411048f1a6c8b3b6688d",
  "source": {
    "blob": "5b0aecaada254d4b9f2409f9780320169bbf0fc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 86,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1d411048f1a6c8b3b6688de8a86c053dce7fad352d5efbf06799420bdac750",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dd236d9-a297-e408-e3e1-51139cc1e6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dyadicAnnulus_log_support (y : ℝ) (hy : dyadicAnnulus (Real.exp y)≠0) :
    |y|≤|Real.log (1/2)|+|Real.log 2|+1 := by
  have hlo : (1/2:ℝ)<Real.exp y := by
    by_contra h
    exact hy (dyadicAnnulus_small _ (le_of_not_gt h))
  have hhi : Real.exp y<2 := by
    by_contra h
    exact hy (dyadicAnnulus_large _ (le_of_not_gt h))
  have hl : Real.log (1/2)≤y := by
    simpa using Real.log_le_log (by norm_num : (0:ℝ)<1/2) hlo.le
  have hh : y≤Real.log 2 := by
    simpa using Real.log_le_log (Real.exp_pos y) hhi.le
  rw [abs_le]
  constructor
  · have := neg_abs_le (Real.log (1/2))
    have := abs_nonneg (Real.log 2)
    linarith
  · have := le_abs_self (Real.log 2)
    have := abs_nonneg (Real.log (1/2))
    linarith

/-- Actual frequency integrability, including before imposing positive R. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0aecaada254d4b9f2409f9780320169bbf0fc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
