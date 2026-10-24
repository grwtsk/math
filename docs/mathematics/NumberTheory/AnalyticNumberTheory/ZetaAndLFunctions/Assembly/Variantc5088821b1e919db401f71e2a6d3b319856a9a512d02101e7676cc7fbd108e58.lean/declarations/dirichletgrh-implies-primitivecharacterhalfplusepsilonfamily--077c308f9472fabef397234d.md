# dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd7b42f2d1d39dece045a97ccfc99c57acb54ea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d40716df-1e86-bf27-96b1-be382dfb144e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6feb7ef-53e3-6654-2526-1f307c481318",
  "kind": "theorem",
  "lexical_name": "dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily",
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
  "slug": "dirichletgrh-implies-primitivecharacterhalfplusepsilonfamily--077c308f9472fabef397234d",
  "source": {
    "blob": "cd7b42f2d1d39dece045a97ccfc99c57acb54ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:077c308f9472fabef397234d8a7523f4ee6b3681e6584aa6a173f32c73a26718",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6feb7ef-53e3-6654-2526-1f307c481318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
    (hExplicit :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            ∃ square : PrimitiveExplicitFormulaSquare χ,
              PrimitiveExplicitFormulaBounds square)
    (hGRH : DirichletGRH) :
    PrimitiveCharacterHalfPlusEpsilonFamily := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  obtain ⟨square, hBounds⟩ := hExplicit q hq χ hPrimitive
  exact grh_implies_centeredTwistedPsiHalfPlusEpsilon square hBounds
    (hGRH q hq χ hPrimitive)

/-- Conditional full family equivalence.  Every analytic dependency appears
as an explicit argument; the theorem does not postulate a global square. -/
@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variantc5088821b1e919db401f71e2a6d3b319856a9a512d02101e7676cc7fbd108e58.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7b42f2d1d39dece045a97ccfc99c57acb54ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
