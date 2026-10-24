# frobSq_le_of_decomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51dca32a-dea8-8d4e-d0d9-4d296a4d71ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42779a11-41ba-3c71-5ed4-f9f1a26bd587",
  "kind": "theorem",
  "lexical_name": "frobSq_le_of_decomp",
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
  "slug": "frobsq-le-of-decomp--44da5548b0a4c36aa2dbfbad",
  "source": {
    "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 250,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44da5548b0a4c36aa2dbfbad51e879bd33c550586a7ed20e565c1338ac03c7b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42779a11-41ba-3c71-5ed4-f9f1a26bd587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobSq_le_of_decomp {G M D E : Matrix n n ℂ} (h : G = M + D + E) {N εD εE : ℝ}
    (hN : 0 ≤ N) (hεD : 0 ≤ εD) (hεE : 0 ≤ εE)
    (hD : frobSq D ≤ εD ^ 2 * N) (hE : frobSq E ≤ εE ^ 2 * N) :
    frobSq G ≤ (1 + (εD + εE)) * frobSq M + ((εD + εE) + (εD + εE) ^ 2) * N := by
  set η := εD + εE with hη
  have hη0 : 0 ≤ η := add_nonneg hεD hεE
  have hm0 : 0 ≤ ‖M‖ := norm_nonneg _
  have hsN : 0 ≤ Real.sqrt N := Real.sqrt_nonneg _
  have hsN2 : Real.sqrt N ^ 2 = N := Real.sq_sqrt hN
  have hDn : ‖D‖ ≤ εD * Real.sqrt N := by
    rw [Assembly.norm_eq_sqrt_frobSq]
    calc Real.sqrt (frobSq D) ≤ Real.sqrt (εD ^ 2 * N) := Real.sqrt_le_sqrt hD
      _ = εD * Real.sqrt N := by rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hεD]
  have hEn : ‖E‖ ≤ εE * Real.sqrt N := by
    rw [Assembly.norm_eq_sqrt_frobSq]
    calc Real.sqrt (frobSq E) ≤ Real.sqrt (εE ^ 2 * N) := Real.sqrt_le_sqrt hE
      _ = εE * Real.sqrt N := by rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hεE]
  have hG : ‖G‖ ≤ ‖M‖ + η * Real.sqrt N := by
    rw [h]
    calc ‖M + D + E‖ ≤ ‖M + D‖ + ‖E‖ := norm_add_le _ _
      _ ≤ ‖M‖ + ‖D‖ + ‖E‖ := by gcongr; exact norm_add_le _ _
      _ ≤ ‖M‖ + εD * Real.sqrt N + εE * Real.sqrt N := by gcongr
      _ = ‖M‖ + η * Real.sqrt N := by rw [hη]; ring
  rw [Assembly.frobSq_eq_norm_sq, Assembly.frobSq_eq_norm_sq]
  have hG2 : ‖G‖ ^ 2 ≤ (‖M‖ + η * Real.sqrt N) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hG 2
  have amgm : 2 * ‖M‖ * Real.sqrt N ≤ ‖M‖ ^ 2 + N := by
    nlinarith [sq_nonneg (‖M‖ - Real.sqrt N)]
  nlinarith [mul_nonneg hη0 (sub_nonneg.2 amgm), mul_nonneg hη0 hm0]

end Frob2

end Transfer
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a42f917d626b73389cf92ccd34f949a5e813862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
