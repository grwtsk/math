# inverse_six_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66c0792a-5f20-1ef4-ff84-32f207f3885f",
  "kind": "theorem",
  "lexical_name": "inverse_six_norm",
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
  "slug": "inverse-six-norm--13a1cb418e3144a3d28bde45",
  "source": {
    "blob": "0a9298fd0022f8b00cd2b86ce6d11e3d09ac6d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 12,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a1cb418e3144a3d28bde45974e71e75723dc13dac3a962ea38c3e970933db9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66c0792a-5f20-1ef4-ff84-32f207f3885f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_six_norm (z : ℂ) :
    ‖-(z⁻¹ ^ 6)‖ = 1 / (Complex.normSq z) ^ 3 := by
  rw [norm_neg, norm_pow, norm_inv]
  have hp : ‖z‖ ^ 6 = (Complex.normSq z) ^ 3 := by
    rw [show (6 : ℕ) = 2 * 3 by norm_num, pow_mul, Complex.sq_norm]
  rw [inv_pow, hp]
  simp only [one_div]

/-- The actual source inverse-sixth direction stays in a uniform negative real sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/19SourceActualMixedInwardPositive/Variant94191e5654db8b67edb2bdafdf1cd89942860df48cde4ffc21873bd860df97fe.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9298fd0022f8b00cd2b86ce6d11e3d09ac6d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
