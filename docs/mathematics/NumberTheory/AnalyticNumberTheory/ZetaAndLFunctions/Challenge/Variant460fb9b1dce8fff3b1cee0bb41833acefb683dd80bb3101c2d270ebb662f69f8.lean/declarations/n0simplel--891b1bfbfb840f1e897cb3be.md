# N0simpleL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4b1e4b5532c91979baad477bef8c49bca0360ce9f3b1d3fcd042462d43da44a",
  "kind": "def",
  "lexical_name": "N0simpleL",
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
  "slug": "n0simplel--891b1bfbfb840f1e897cb3be",
  "source": {
    "blob": "4fd6da2ac9259462416359c309249c302cc4a6a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:891b1bfbfb840f1e897cb3be7e670c73f53c0e8ccd742d064f9cf543f615990a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4b1e4b5532c91979baad477bef8c49bca0360ce9f3b1d3fcd042462d43da44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def N0simpleL (T₁ T₂ : ℝ) : ℕ :=
  (zerosInL χ T₁ T₂ ∩ {ρ | ρ.re = 1 / 2} ∩ {ρ | zeroMultL χ ρ = 1}).ncard

end Dirichlet

/-! ## 3. The Montgomery–Taylor constant of Theorem D -/

/-- c₁* := √2·tan ϑ / (1 + ϑ·tan ϑ) at ϑ = 1/√2 — the paper's closed form for the optimal-window
constant c*_λ = √2·tan ϑ/(1 + ϑ·tan ϑ), ϑ = λ/√2, at λ = 1. Numerically c₁* = 0.7532960…
(= 2·tan(1/√2)/(√2 + tan(1/√2)); 1/c₁* = 1/2 + 2^{-1/2}·cot(2^{-1/2}) is the Montgomery–Taylor
constant). Theorem D's proportions here are 2 − 1/c₁* = 0.67250… (for N₀* and N₀ˢ) and
(3 − 1/c₁*)/2 = 0.83625… (for N_d); the decimals are NOT part of the formal statements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fd6da2ac9259462416359c309249c302cc4a6a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
