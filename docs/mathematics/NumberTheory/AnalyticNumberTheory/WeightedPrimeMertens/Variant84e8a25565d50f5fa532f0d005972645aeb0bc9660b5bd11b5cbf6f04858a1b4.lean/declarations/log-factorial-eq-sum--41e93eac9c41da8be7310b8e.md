# log_factorial_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2afc3a31-c1a1-5bf9-d706-aa6cd8cdd8c0",
  "kind": "theorem",
  "lexical_name": "log_factorial_eq_sum",
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
  "slug": "log-factorial-eq-sum--41e93eac9c41da8be7310b8e",
  "source": {
    "blob": "91e27e50a81a32cf1a98229483a224d94c6a020f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e93eac9c41da8be7310b8e38ce779c0d05a4a71b7b23c948772f4d4174641b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2afc3a31-c1a1-5bf9-d706-aa6cd8cdd8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_factorial_eq_sum (N : ℕ) :
    Real.log (N.factorial : ℝ) = ∑ n ∈ Ioc 0 N, Real.log (n : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
    rw [Nat.factorial_succ, Nat.cast_mul,
      Real.log_mul (by positivity) (by positivity), ih]
    rw [Finset.sum_Ioc_succ_top (by omega)]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant84e8a25565d50f5fa532f0d005972645aeb0bc9660b5bd11b5cbf6f04858a1b4.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e27e50a81a32cf1a98229483a224d94c6a020f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
