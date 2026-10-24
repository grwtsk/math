# prefixSet_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450e6196-20c3-47bd-c981-daee0a7577ca",
  "kind": "theorem",
  "lexical_name": "prefixSet_closed",
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
  "slug": "prefixset-closed--4492ff8b1473f5c142952205",
  "source": {
    "blob": "9dfe868ea52027095f1c600ae0983ff6f22db1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4492ff8b1473f5c1429522057647a00a3bdd98de07aab1d616589747f3b58673",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450e6196-20c3-47bd-c981-daee0a7577ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefixSet_closed (a : ℕ → ℕ) (length : ℕ) : IsClosed (prefixSet a length) := by
  apply (tailBox_closed a).inter
  have he (n : ℕ) : IsClosed {x : ℕ → ℝ |
      (x n - (a n : ℝ)) * x (n + 1) = 1} :=
    isClosed_eq ((continuous_apply n).sub continuous_const |>.mul (continuous_apply (n + 1)))
      continuous_const
  have hc (n : ℕ) : IsClosed {x : ℕ → ℝ |
      n < length → (x n - (a n : ℝ)) * x (n + 1) = 1} := by
    by_cases hn : n < length
    · simpa only [hn, true_implies] using he n
    · simp [hn]
  simpa only [ofPred_forall] using isClosed_iInter hc

/-- Increasing the required prefix preserves all earlier constraints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dfe868ea52027095f1c600ae0983ff6f22db1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
