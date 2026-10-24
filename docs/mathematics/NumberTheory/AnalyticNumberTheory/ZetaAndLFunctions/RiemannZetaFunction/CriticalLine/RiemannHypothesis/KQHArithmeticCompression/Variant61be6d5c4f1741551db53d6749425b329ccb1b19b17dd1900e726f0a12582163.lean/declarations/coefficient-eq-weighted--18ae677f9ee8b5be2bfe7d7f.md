# coefficient_eq_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fab42594-3b1f-2f2a-6c49-cbb265b3e444",
  "kind": "theorem",
  "lexical_name": "coefficient_eq_weighted",
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
  "slug": "coefficient-eq-weighted--18ae677f9ee8b5be2bfe7d7f",
  "source": {
    "blob": "ea52edfe56b336e7c564751eee7aab214ac7251d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant61be6d5c4f1741551db53d6749425b329ccb1b19b17dd1900e726f0a12582163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ae677f9ee8b5be2bfe7d7f179d42f4f6f12268700ec2997d49ca67facf1c75",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant61be6d5c4f1741551db53d6749425b329ccb1b19b17dd1900e726f0a12582163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fab42594-3b1f-2f2a-6c49-cbb265b3e444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coefficient_eq_weighted (n : ℕ) (hn : 2 ≤ n) :
    ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) =
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) * Real.exp (Real.log n / 2) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have he : Real.exp (-Real.log (n : ℝ) / 2) =
      Real.exp (Real.log n / 2) / (n : ℝ) := by
    calc
      _ = Real.exp (Real.log (n : ℝ) / 2 - Real.log n) := by congr 1; ring
      _ = _ := by rw [Real.exp_sub, Real.exp_log hn0]
  rw [he]
  ring

/-- An unconditional estimate on the actual positive bump direction. The negative
right side at small scales is deliberate and keeps the theorem all-real. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant61be6d5c4f1741551db53d6749425b329ccb1b19b17dd1900e726f0a12582163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant61be6d5c4f1741551db53d6749425b329ccb1b19b17dd1900e726f0a12582163.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea52edfe56b336e7c564751eee7aab214ac7251d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
