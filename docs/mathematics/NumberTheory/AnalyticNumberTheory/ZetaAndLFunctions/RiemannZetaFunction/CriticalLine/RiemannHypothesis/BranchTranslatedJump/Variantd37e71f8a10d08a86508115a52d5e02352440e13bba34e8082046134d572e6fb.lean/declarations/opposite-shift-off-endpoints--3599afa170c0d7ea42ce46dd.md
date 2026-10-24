# opposite_shift_off_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:724be1f6-9103-5809-0de8-2bf57fb70d76",
  "kind": "theorem",
  "lexical_name": "opposite_shift_off_endpoints",
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
  "slug": "opposite-shift-off-endpoints--3599afa170c0d7ea42ce46dd",
  "source": {
    "blob": "f8ce1ef3053a91ac8be5f1e9f62c0ea9b973c67c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3599afa170c0d7ea42ce46dda049dc4716355a115d980df4c0b4a7de491a30f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:724be1f6-9103-5809-0de8-2bf57fb70d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opposite_shift_off_endpoints {A : ℝ} {n m : ℕ}
    (hm : 2 ≤ m) (hw : 0 < ArithmeticFunction.vonMangoldt m)
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    A - Real.log n - Real.log m ≠ -A ∧ A - Real.log n - Real.log m ≠ A := by
  have hm1 : (1 : ℝ) < m := by exact_mod_cast (by omega : 1 < m)
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  constructor
  · intro heq
    have hlog : Real.log m < 2 * A := by linarith [hx.2]
    have hmX : (m : ℝ) < Real.exp (2 * A) := by
      simpa only [Real.exp_log hm0] using Real.exp_lt_exp.mpr hlog
    apply hu m
      (mem_interiorInventory.mpr ⟨hm, hmX, ArithmeticFunction.vonMangoldt_pos_iff.mp hw⟩)
    linarith
  · linarith [Real.log_pos hm1, hx.2]

/-- All unisolated terms have an ordinary derivative at the unmatched knot; zero weights
are checked directly without discarding their closed-inventory indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variantd37e71f8a10d08a86508115a52d5e02352440e13bba34e8082046134d572e6fb.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ce1ef3053a91ac8be5f1e9f62c0ea9b973c67c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
