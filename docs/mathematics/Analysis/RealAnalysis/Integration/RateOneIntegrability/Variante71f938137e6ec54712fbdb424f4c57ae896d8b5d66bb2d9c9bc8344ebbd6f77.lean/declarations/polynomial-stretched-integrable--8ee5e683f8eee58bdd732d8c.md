# polynomial_stretched_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52e21a65ed24258d00b3c24975f18966ad365703",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72b60d28-4dc0-e8e4-420b-976405505529",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ce4dd4c-9e99-3777-25c4-a8754d39b5ee",
  "kind": "theorem",
  "lexical_name": "polynomial_stretched_integrable",
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
  "slug": "polynomial-stretched-integrable--8ee5e683f8eee58bdd732d8c",
  "source": {
    "blob": "52e21a65ed24258d00b3c24975f18966ad365703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee5e683f8eee58bdd732d8c3ec1b1eabcaa606830a406e65b1906ac16d7bc7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ce4dd4c-9e99-3777-25c4-a8754d39b5ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_stretched_integrable (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-c * A ^ p)) (Ioi 1) := by
  have h := (integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (17 : ℝ)) (p := p) (b := c) (by norm_num) hp hc).mono_set
      (show Ioi (1 : ℝ) ⊆ Ioi 0 from fun x h ↦ show 0 < x from zero_lt_one.trans h)
  apply h.congr_fun _ measurableSet_Ioi
  intro A _
  dsimp only
  rw [show A ^ (17 : ℝ) = A ^ (17 : ℕ) from Real.rpow_natCast A 17]

/-- The three terms arising from the actual correction and the PNT split are integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrability/Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e21a65ed24258d00b3c24975f18966ad365703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
