# native_scale_cancels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5dc0a87-2c4b-5d15-3f94-6bd2cf65796d",
  "kind": "theorem",
  "lexical_name": "native_scale_cancels",
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
  "slug": "native-scale-cancels--9fc00856f013f0ac45c42031",
  "source": {
    "blob": "6163b06d1fb9815bb76129adbac655bbcf000f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc00856f013f0ac45c42031901044594393f1df1fe52478ae124d7682a16009",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5dc0a87-2c4b-5d15-3f94-6bd2cf65796d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_scale_cancels {x : ℝ} (hx : 0 < x) (a : ℝ) :
    ((2 / Real.sqrt x) ^ a) * x ^ (a / 2) = (2 : ℝ) ^ a := by
  rw [Real.div_rpow (by norm_num : (0 : ℝ) ≤ 2) (Real.sqrt_nonneg x), Real.sqrt_eq_rpow,
    ← Real.rpow_mul hx.le]
  rw [show (1 / 2 : ℝ) * a = a / 2 by ring]
  have hpower : x ^ (a / 2) ≠ 0 := (Real.rpow_pos_of_pos hx _).ne'
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeLpTail/Variantb3ade26238f2cc60447fcf96f003c7b53deb09ec0219dfc920487cd06cb8ffc6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6163b06d1fb9815bb76129adbac655bbcf000f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
