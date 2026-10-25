# grh_implies_centeredTwistedPsiCriticalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7785f55-43b6-a527-d64f-e0143ecf8cbc",
  "kind": "theorem",
  "lexical_name": "grh_implies_centeredTwistedPsiCriticalBound",
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
  "slug": "grh-implies-centeredtwistedpsicriticalbound--b14b89176da40ae98368b823",
  "source": {
    "blob": "047594e3603cf1174ada670b1eb8ab9a1136e9e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b14b89176da40ae98368b823fbb6d9b73498dd8106cd8da2521bde96589f888d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7785f55-43b6-a527-d64f-e0143ecf8cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_implies_centeredTwistedPsiCriticalBound
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ)
    (hBounds : PrimitiveExplicitFormulaBounds square)
    (hGRH : GRHForPrimitiveCharacter χ) :
    CenteredTwistedPsiCriticalBound χ := by
  obtain ⟨Czero, hCzero, hZero⟩ := hBounds.1 hGRH
  obtain ⟨Cgamma, hCgamma, hGamma⟩ := hBounds.2.1
  obtain ⟨Ctrivial, hCtrivial, hTrivial⟩ := hBounds.2.2.1
  obtain ⟨Ccontour, hCcontour, hContour⟩ := hBounds.2.2.2.1
  obtain ⟨Cdesmooth, hCdesmooth, hDesmooth⟩ := hBounds.2.2.2.2
  refine ⟨Czero + Cgamma + Ctrivial + Ccontour + Cdesmooth,
    by positivity, ?_⟩
  intro x hx
  rw [square.desmoothingIdentity x, square.smoothedExplicitFormula x]
  have hnorm :
      ‖square.zeroContribution x + square.gammaContribution x +
          square.trivialZeroContribution x + square.contourError x +
          square.desmoothingError x‖ ≤
        ‖square.zeroContribution x‖ + ‖square.gammaContribution x‖ +
          ‖square.trivialZeroContribution x‖ + ‖square.contourError x‖ +
          ‖square.desmoothingError x‖ := by
    calc
      ‖square.zeroContribution x + square.gammaContribution x +
          square.trivialZeroContribution x + square.contourError x +
          square.desmoothingError x‖ ≤
          ‖square.zeroContribution x + square.gammaContribution x +
            square.trivialZeroContribution x + square.contourError x‖ +
            ‖square.desmoothingError x‖ := norm_add_le _ _
      _ ≤ (‖square.zeroContribution x + square.gammaContribution x +
            square.trivialZeroContribution x‖ +
            ‖square.contourError x‖) +
            ‖square.desmoothingError x‖ := by
          gcongr
          exact norm_add_le _ _
      _ ≤ ((‖square.zeroContribution x + square.gammaContribution x‖ +
            ‖square.trivialZeroContribution x‖) +
            ‖square.contourError x‖) +
            ‖square.desmoothingError x‖ := by
          gcongr
          exact norm_add_le _ _
      _ ≤ (((‖square.zeroContribution x‖ +
            ‖square.gammaContribution x‖) +
            ‖square.trivialZeroContribution x‖) +
            ‖square.contourError x‖) +
            ‖square.desmoothingError x‖ := by
          gcongr
          exact norm_add_le _ _
  calc
    ‖square.zeroContribution x + square.gammaContribution x +
        square.trivialZeroContribution x + square.contourError x +
        square.desmoothingError x‖ ≤
        ‖square.zeroContribution x‖ + ‖square.gammaContribution x‖ +
          ‖square.trivialZeroContribution x‖ + ‖square.contourError x‖ +
          ‖square.desmoothingError x‖ := hnorm
    _ ≤ Czero * centeredTwistedPsiCriticalRate q x +
        Cgamma * centeredTwistedPsiCriticalRate q x +
        Ctrivial * centeredTwistedPsiCriticalRate q x +
        Ccontour * centeredTwistedPsiCriticalRate q x +
        Cdesmooth * centeredTwistedPsiCriticalRate q x := by
      gcongr
      · exact hZero x hx
      · exact hGamma x hx
      · exact hTrivial x hx
      · exact hContour x hx
      · exact hDesmooth x hx
    _ = (Czero + Cgamma + Ctrivial + Ccontour + Cdesmooth) *
        centeredTwistedPsiCriticalRate q x := by ring

@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047594e3603cf1174ada670b1eb8ab9a1136e9e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
