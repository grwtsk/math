# dirichletGRH_iff_halfPlusEpsilonFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a12034caaca72861b6c509bd757acde49aa2e05c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb04eb11-455c-9697-6c30-5d79737946b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbbccf11-ab07-56d0-6f2a-fa58c00a3f71",
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
  "slug": "dirichletgrh-iff-halfplusepsilonfamily--44ba435c47fa018cc48772d4",
  "source": {
    "blob": "a12034caaca72861b6c509bd757acde49aa2e05c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ba435c47fa018cc48772d4dae11a751f442cd349d9cfa9b6592b43d8fe1639",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbbccf11-ab07-56d0-6f2a-fa58c00a3f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletGRH_iff_halfPlusEpsilonFamily
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
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
      hMellin

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variant7268facf07ddfcab3efbdd6850eeb9c9a4498a99ccc8634f86d96d3e93c99835.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12034caaca72861b6c509bd757acde49aa2e05c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
