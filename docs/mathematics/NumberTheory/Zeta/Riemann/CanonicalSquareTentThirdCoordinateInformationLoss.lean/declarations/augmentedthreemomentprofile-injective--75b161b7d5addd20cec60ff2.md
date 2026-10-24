# augmentedThreeMomentProfile_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c148d20-5a6b-989b-97da-306637fb5607",
  "kind": "theorem",
  "lexical_name": "augmentedThreeMomentProfile_injective",
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
  "slug": "augmentedthreemomentprofile-injective--75b161b7d5addd20cec60ff2",
  "source": {
    "blob": "ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75b161b7d5addd20cec60ff241691c512afead6b4b063302f23a42f176262b37",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c148d20-5a6b-989b-97da-306637fb5607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem augmentedThreeMomentProfile_injective :
    Function.Injective
      (augmentedProfile bombieriMomentProfile thirdCoordinateReadout) := by
  intro u v heq
  have hp : bombieriMomentProfile u = bombieriMomentProfile v :=
    congrArg Prod.fst heq
  have hOrd : ordinaryMomentRow u = ordinaryMomentRow v := by
    have h := congrArg Prod.fst hp
    change ordinaryMomentRow u = ordinaryMomentRow v at h
    exact h
  have hRec : reciprocalMomentRow u = reciprocalMomentRow v := by
    have h := congrArg Prod.snd hp
    change reciprocalMomentRow u = reciprocalMomentRow v at h
    exact h
  have hThird : u (2 : Fin 3) = v (2 : Fin 3) := by
    have h := congrArg Prod.snd heq
    change u (2 : Fin 3) = v (2 : Fin 3) at h
    exact h
  have hOrdZero : ordinaryMomentRow (u - v) = 0 := by
    have hsub :
        ordinaryMomentRow (u - v) =
          ordinaryMomentRow u - ordinaryMomentRow v := by
      simp only [ordinaryMomentRow, Pi.sub_apply]
      ring
    rw [hsub, hOrd, sub_self]
  have hRecZero : reciprocalMomentRow (u - v) = 0 := by
    have hsub :
        reciprocalMomentRow (u - v) =
          reciprocalMomentRow u - reciprocalMomentRow v := by
      simp only [reciprocalMomentRow, Pi.sub_apply]
      ring
    rw [hsub, hRec, sub_self]
  obtain ⟨c, hc⟩ :=
    coefficient_line_of_two_moments (u - v) hOrdZero hRecZero
  have hcThird : (0 : ℂ) = c * cofactorTwo := by
    simpa [Pi.sub_apply, correctedCoordinates, hThird] using
      (hc (2 : Fin 3))
  have hcZero : c = 0 := by
    rcases mul_eq_zero.mp hcThird.symm with hc0 | hcof
    · exact hc0
    · exact False.elim (cofactorTwo_ne_zero hcof)
  funext i
  have hi : u i - v i = 0 := by
    simpa only [Pi.sub_apply, hcZero, zero_mul] using (hc i)
  exact sub_eq_zero.mp hi

/-- Consequently *every* readout of the three source coefficients
can be reconstructed from the ordered pair of Bombieri moments plus the
third coefficient by some classical decoder.

This is existence of a total set-theoretic decoder, not a computational,
continuous, bounded, analytic, or Weil-form representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfa664d3b8fb4ecd3f70c3ee6a989c3d14e485f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
