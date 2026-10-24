# dirichletGRH_iff_halfPlusEpsilonFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72015c30-2477-52a7-14e6-d6b381753ef7",
  "kind": "theorem",
  "lexical_name": "dirichletGRH_iff_halfPlusEpsilonFamily",
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
  "slug": "dirichletgrh-iff-halfplusepsilonfamily--517cb2101f03c7401671f2ef",
  "source": {
    "blob": "6db8cedf300cd54cc7f1f07b81eb0389398be206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:517cb2101f03c7401671f2efde84e2e30dd02e02bf5f6613542cf6584cdd0be8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72015c30-2477-52a7-14e6-d6b381753ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletGRH_iff_halfPlusEpsilonFamily
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
    (hFE :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            PrimitiveFunctionalEquationSquare χ)
    (hExplicit :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            ∃ square : PrimitiveExplicitFormulaSquare χ,
              PrimitiveExplicitFormulaBounds square) :
    DirichletGRH ↔ PrimitiveCharacterHalfPlusEpsilonFamily := by
  constructor
  · exact dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
      hExplicit
  · exact primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
      hMellin hFE

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante4bf82d9f5c5327a3e02b22150f279d9fdd747ceb4e0b538242ba26ff77ba1b8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db8cedf300cd54cc7f1f07b81eb0389398be206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
