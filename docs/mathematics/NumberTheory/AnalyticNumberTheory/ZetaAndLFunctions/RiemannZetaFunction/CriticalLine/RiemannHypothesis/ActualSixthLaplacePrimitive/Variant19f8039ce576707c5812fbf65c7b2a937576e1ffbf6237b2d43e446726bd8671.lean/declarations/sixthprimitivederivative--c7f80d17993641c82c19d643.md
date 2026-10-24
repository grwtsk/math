# sixthPrimitiveDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a65064713e247aa0b81dface1d2ea1a91f42f1733efce026a61a4c208b70488c",
  "kind": "def",
  "lexical_name": "sixthPrimitiveDerivative",
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
  "slug": "sixthprimitivederivative--c7f80d17993641c82c19d643",
  "source": {
    "blob": "9a54bf7dad8b64caa8449d63890246eef79a0957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7f80d17993641c82c19d64360ff76b38ed3e09a0742c44fa530ff504101520a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a65064713e247aa0b81dface1d2ea1a91f42f1733efce026a61a4c208b70488c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def sixthPrimitiveDerivative (A x : ℝ) : ℝ :=
    ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * 1 * x ^ 0 +
    ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * 2 * x ^ 1 +
    ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * 3 * x ^ 2 +
    ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * 4 * x ^ 3 +
    ((864 / A ^ 6) + (-435456 / A ^ 8)) * 5 * x ^ 4 +
    ((-24 / A ^ 6) + (12096 / A ^ 8)) * 6 * x ^ 5 +
    ((-288 / A ^ 8)) * 7 * x ^ 6 +
    ((6 / A ^ 8)) * 8 * x ^ 7

/-- The sixth endpoint correction in this module, with the following exact parameterization.

def sixthEndpointCorrection (A : ℝ) : ℝ := (1 - 60 / A + 1620 / A ^ 2 - 22680 / A ^ 3 + 136080
/ A ^ 4) - Real.exp (-A / 3) * (1 + 60 / A + 1620 / A ^ 2 + 22680 / A ^ 3 + 136080 / A ^ 4)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a54bf7dad8b64caa8449d63890246eef79a0957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
