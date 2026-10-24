# logResidual_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefd34a7-5db3-73fa-a6b7-7d25accab3c7",
  "kind": "theorem",
  "lexical_name": "logResidual_sq_le",
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
  "slug": "logresidual-sq-le--5aadb1cc5b7a024243f9b7e2",
  "source": {
    "blob": "2cc827dc3a32ee1b8eab406c2d687b83a9ce35eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aadb1cc5b7a024243f9b7e244df71ded458ab4427a2d7750ec4a03161aba627",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefd34a7-5db3-73fa-a6b7-7d25accab3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logResidual_sq_le (X : ℕ) (ε u : ℝ) :
    ‖logResidual X ε u‖ ^ 2 ≤ Real.exp (-u) *
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 := by
  have he : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have h := pow_le_pow_left₀ (norm_nonneg _) (logResidual_norm_le X ε u) 2
  simpa only [mul_pow, he, mul_comm] using h

/-- Both exact endpoint tails give genuine L2 admission on the complete logarithmic line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc827dc3a32ee1b8eab406c2d687b83a9ce35eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
