# Complex.hasSum_sin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c19c2707-9503-49d4-c4a9-c9e9a5806469",
  "kind": "theorem",
  "lexical_name": "Complex.hasSum_sin",
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
  "slug": "complex-hassum-sin--c04d1961b9e361dedb185263",
  "source": {
    "blob": "338b1b342d1b92e1136c2b0c138dac80b1dfc5a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04d1961b9e361dedb18526394823dc65f2d52db78dc5cd0014389e9d52f9667",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c19c2707-9503-49d4-c4a9-c9e9a5806469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.hasSum_sin (z : ℂ) :
    HasSum (fun n : ℕ => (-1) ^ n * z ^ (2 * n + 1) / ↑(2 * n + 1)!) (Complex.sin z) := by
  convert Complex.hasSum_sin' z using 1
  simp_rw [mul_pow, pow_succ', pow_mul, Complex.I_sq, ← mul_assoc, mul_div_assoc, div_right_comm,
    div_self Complex.I_ne_zero, mul_comm _ ((-1 : ℂ) ^ _), mul_one_div, mul_div_assoc, mul_assoc]
#align complex.has_sum_sin Complex.hasSum_sin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantc80b5ec5c50ad099f5fb18bf0a398b936e1c3b677aff33a025681598d7e7e412.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `338b1b342d1b92e1136c2b0c138dac80b1dfc5a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
