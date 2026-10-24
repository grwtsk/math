# paired_prime_atom_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70290e1d-897d-5157-1e4d-da0be87013e7",
  "kind": "theorem",
  "lexical_name": "paired_prime_atom_upper",
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
  "slug": "paired-prime-atom-upper--e1a07df9b8543786e521db9b",
  "source": {
    "blob": "ce26f376a53cac584bc777addb5fd986765d3061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a07df9b8543786e521db9b0dea2ece272bcde56a19378ee3e8b51b3aad095e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70290e1d-897d-5157-1e4d-da0be87013e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_prime_atom_upper (T : ℝ) (m q : ℕ) (hT : 20 ≤ T) (hq : q.Prime)
    (hmlo : Real.exp (T-1/4) ≤ (m:ℝ)) (hmhi : (m:ℝ) ≤ Real.exp (T-1/8))
    (hqlo : Real.exp (T-1/4) ≤ (q:ℝ)) (hqhi : (q:ℝ) ≤ Real.exp (T-1/8)) :
    ArithmeticFunction.vonMangoldt m * (ArithmeticFunction.moebius q : ℝ) *
      (integratedKernel T m q - integratedKernel T m (2*q)) ≤
      -(ArithmeticFunction.vonMangoldt m *
        (T^8/(23592960 * Real.sqrt ((m*q : ℕ) : ℝ)))) := by
  have h := mul_le_mul_of_nonneg_left (paired_interval_lower T m q hT hmlo hmhi hqlo hqhi)
    (ArithmeticFunction.vonMangoldt_nonneg (n := m))
  rw [ArithmeticFunction.moebius_apply_prime hq]
  norm_num only [Int.cast_neg, Int.cast_one]
  nlinarith

/-- Three times an odd prime supplies the opposite source sign in the paired outer sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce26f376a53cac584bc777addb5fd986765d3061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
