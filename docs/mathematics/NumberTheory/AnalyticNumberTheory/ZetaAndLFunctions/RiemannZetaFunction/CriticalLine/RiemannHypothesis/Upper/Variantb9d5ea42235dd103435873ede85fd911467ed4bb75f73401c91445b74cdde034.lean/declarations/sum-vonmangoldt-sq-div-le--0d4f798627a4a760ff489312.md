# sum_vonMangoldt_sq_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:346232fb-8da4-6a89-7dad-b2687aeee37f",
  "kind": "lemma",
  "lexical_name": "sum_vonMangoldt_sq_div_le",
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
  "slug": "sum-vonmangoldt-sq-div-le--0d4f798627a4a760ff489312",
  "source": {
    "blob": "140e9178fb05091a1f0436370130aea90afdfddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4f798627a4a760ff48931299bc55ae4b337590a8d29b98f9cbdfc5eebaac33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:346232fb-8da4-6a89-7dad-b2687aeee37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_vonMangoldt_sq_div_le {u : ℝ} (hu : 0 ≤ u) :
    ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ N ^ 2 / N ≤ u * (u + KM) := by
  calc ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ N ^ 2 / N ≤ ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, u * (Λ N / N) := by
        refine sum_le_sum fun N hN => ?_
        have hlog : Λ N ≤ u := ArithmeticFunction.vonMangoldt_le_log.trans (log_le_of_mem_Ioc_floor_exp hN)
        rw [sq, mul_div_assoc]
        exact mul_le_mul_of_nonneg_right hlog (div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg N))
    _ = u * Sdiv Λ u := by rw [← mul_sum]; rfl
    _ ≤ u * (u + KM) := mul_le_mul_of_nonneg_left (Sdiv_lam_le hu) hu

/-- the absolute constant in S(u) ≤ CS·(1+u)². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140e9178fb05091a1f0436370130aea90afdfddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
