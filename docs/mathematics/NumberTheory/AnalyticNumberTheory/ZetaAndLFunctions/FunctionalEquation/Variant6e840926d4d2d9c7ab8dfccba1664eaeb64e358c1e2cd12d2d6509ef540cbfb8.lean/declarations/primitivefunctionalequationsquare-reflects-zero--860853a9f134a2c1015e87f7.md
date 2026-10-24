# PrimitiveFunctionalEquationSquare.reflects_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c60b595818a3466b2d990a562abd905b99833d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ccaa5f5-a794-76aa-ba20-07f7ef7f7dff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc5323dd-2550-4550-e608-605e21bed442",
  "kind": "theorem",
  "lexical_name": "PrimitiveFunctionalEquationSquare.reflects_zero",
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
  "slug": "primitivefunctionalequationsquare-reflects-zero--860853a9f134a2c1015e87f7",
  "source": {
    "blob": "1c60b595818a3466b2d990a562abd905b99833d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:860853a9f134a2c1015e87f7035a05038c55982cd193f62b87f6294afce2869d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc5323dd-2550-4550-e608-605e21bed442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveFunctionalEquationSquare.reflects_zero
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveFunctionalEquationSquare χ)
    {s : ℂ} (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ))
    (hsZero : DirichletCharacter.LFunction χ s = 0) :
    DirichletCharacter.LFunction χ (criticalReflection s) = 0 := by
  have hs1 : s.re < 1 := by linarith
  have hCompleted : square.completedL s = 0 :=
    (square.completedL_zero_iff_LFunction_zero s hs0 hs1).2 hsZero
  have hProduct :
      square.functionalFactor s *
          star (square.completedL (criticalReflection s)) = 0 := by
    rw [← square.functionalEquation s, hCompleted]
  have hConj : star (square.completedL (criticalReflection s)) = 0 :=
    (mul_eq_zero.mp hProduct).resolve_left
      (square.functionalFactor_ne_zero s)
  have hReflectedCompleted :
      square.completedL (criticalReflection s) = 0 := by
    have := congrArg (starRingEnd ℂ) hConj
    simpa using this
  have href0 : 0 < (criticalReflection s).re := by
    rw [criticalReflection_re]
    linarith
  have href1 : (criticalReflection s).re < 1 := by
    rw [criticalReflection_re]
    linarith
  exact (square.completedL_zero_iff_LFunction_zero
    (criticalReflection s) href0 href1).1 hReflectedCompleted

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c60b595818a3466b2d990a562abd905b99833d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
