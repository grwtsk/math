# LFunction_zero_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88001b34-cfd3-21cc-a0ba-de339a3af762",
  "kind": "theorem",
  "lexical_name": "LFunction_zero_reflection",
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
  "slug": "lfunction-zero-reflection--cf9283885f4d72985e303592",
  "source": {
    "blob": "c13d525281b49f1688ceca636f7c4e62fb2ee89b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantadb2d1247adea15babb4c74b478acff72385abf7d66da0fc44566cf7ab674fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9283885f4d72985e303592cd97877bfd266fb4f2bd0225bce478236ac00de9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantadb2d1247adea15babb4c74b478acff72385abf7d66da0fc44566cf7ab674fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88001b34-cfd3-21cc-a0ba-de339a3af762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_zero_reflection
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hPrimitive : DirichletCharacter.IsPrimitive χ)
    (s : ℂ) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    DirichletCharacter.LFunction χ s = 0 ↔
      DirichletCharacter.LFunction χ⁻¹ (1 - s) = 0 := by
  constructor
  · exact LFunction_zero_reflect χ hPrimitive hs0 hs1
  · intro hInverseZero
    have hInversePrimitive : DirichletCharacter.IsPrimitive χ⁻¹ :=
      isPrimitive_inv hPrimitive
    have hReflectedPositive : 0 < (1 - s).re := by
      simp only [sub_re, one_re]
      linarith
    have hReflectedBelowOne : (1 - s).re < 1 := by
      simp only [sub_re, one_re]
      linarith
    have hBack := LFunction_zero_reflect χ⁻¹ hInversePrimitive
      hReflectedPositive hReflectedBelowOne hInverseZero
    simpa using hBack

/-- Mathlib's primitive functional equation and inverse-character
conjugation reflect a left-half critical-strip zero to the right half for
the same character.  The proof retains the nonconstant conductor factor in
mathlib's normalization. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantadb2d1247adea15babb4c74b478acff72385abf7d66da0fc44566cf7ab674fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variantadb2d1247adea15babb4c74b478acff72385abf7d66da0fc44566cf7ab674fb5.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c13d525281b49f1688ceca636f7c4e62fb2ee89b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
