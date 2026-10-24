# actualEarly_add_scale_zeta_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73f9c2b2-794c-26f6-212f-91eaae166afc",
  "kind": "theorem",
  "lexical_name": "actualEarly_add_scale_zeta_abs_le",
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
  "slug": "actualearly-add-scale-zeta-abs-le--320a885ceba4ab0f2837375e",
  "source": {
    "blob": "71ee4fba371332d8f6c3967f54ba445e45edb495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEarlyFractionalZeta/Variante0dd2bb1597d2b4834b19e8adb990013f22816e7496343aba9ed5e0b6432314b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:320a885ceba4ab0f2837375ef502b4f4d892b745ca5db39423dfeb81f8c5ac21",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEarlyFractionalZeta/Variante0dd2bb1597d2b4834b19e8adb990013f22816e7496343aba9ed5e0b6432314b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73f9c2b2-794c-26f6-212f-91eaae166afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEarly_add_scale_zeta_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A + A + (riemannZeta (1 / 2 : ℂ)).re| ≤
      actualHeadFractionalEnvelope A := by
  have hz := earlyFractionalConstant_add_zeta_half_eq_zero
  have he : complementaryEarlyBaseline A + A + (riemannZeta (1 / 2 : ℂ)).re =
      complementaryEarlyBaseline A + A - earlyFractionalConstant := by linarith only [hz]
  rw [he]
  exact actualEarly_add_scale_sub_fractional_abs_le_envelope hA

/-- Actual early head plus its scale tends to the identified zeta constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEarlyFractionalZeta/Variante0dd2bb1597d2b4834b19e8adb990013f22816e7496343aba9ed5e0b6432314b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEarlyFractionalZeta/Variante0dd2bb1597d2b4834b19e8adb990013f22816e7496343aba9ed5e0b6432314b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ee4fba371332d8f6c3967f54ba445e45edb495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
