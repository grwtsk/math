# beta_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04e8770d-3b9d-07ce-aeb8-394dda223a84",
  "kind": "theorem",
  "lexical_name": "beta_succ",
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
  "slug": "beta-succ--0408c42e3d08bd16c8b480bd",
  "source": {
    "blob": "ce5eec6232a65dc14bb18f372c614a0f4dd0ad70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0408c42e3d08bd16c8b480bdd84fc8f51a7a0c898d0b596739ae724d6b9254ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04e8770d-3b9d-07ce-aeb8-394dda223a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_succ (U n : ℕ) (hn : 0 < n) :
    beta (U + 1) n = beta U n -
      (if U + 1 ∣ n then (moebius (U + 1) : ℝ) else 0) := by
  classical
  have hnew : U + 1 ∉ Finset.Icc 1 U := by simp
  rw [beta_eq_delta_sub_short, beta_eq_delta_sub_short,
    short_divisor_sum_eq_indicator _ _ hn, short_divisor_sum_eq_indicator _ _ hn,
    shortInventory_succ, Finset.sum_insert hnew]
  ring

/-- The centered row keeps the reciprocal mean and signed multiples atom together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5eec6232a65dc14bb18f372c614a0f4dd0ad70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
