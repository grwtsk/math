# primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cc958f0-d95d-2f8b-2041-d719f3c8f4e4",
  "kind": "theorem",
  "lexical_name": "primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH",
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
  "slug": "primitivecharacterhalfplusepsilonfamily-implies-dirichletgrh--e681bc532c8627de6f92366e",
  "source": {
    "blob": "55b15bf9a6b655522821198485b63514f00e2e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e681bc532c8627de6f92366e142cbbddb41b9ca1d92626be733b6f6477d1843c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cc958f0-d95d-2f8b-2041-d719f3c8f4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
    (hMellin :
      ∀ (q : ℕ) (hq : 0 < q),
        letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
        ∀ χ : DirichletCharacter ℂ q,
          DirichletCharacter.IsPrimitive χ →
            MellinLogDerivativeSquare χ)
    (hFamily : PrimitiveCharacterHalfPlusEpsilonFamily) :
    DirichletGRH := by
  intro q hq
  letI : NeZero q := ⟨Nat.ne_of_gt hq⟩
  intro χ hPrimitive
  exact centeredTwistedPsiHalfPlusEpsilon_implies_grh_of_mellinInterface
    χ hPrimitive
    (hMellin q hq χ hPrimitive)
    (hFamily q hq χ hPrimitive)

/-- The checked explicit-formula endpoint gives the pointwise centered
family under Dirichlet GRH. -/
@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Assembly/Variante74dc9c5339917aa7eaebe85aada416c2c7c5b903db27254a83f4b1b1010ed78.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55b15bf9a6b655522821198485b63514f00e2e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
