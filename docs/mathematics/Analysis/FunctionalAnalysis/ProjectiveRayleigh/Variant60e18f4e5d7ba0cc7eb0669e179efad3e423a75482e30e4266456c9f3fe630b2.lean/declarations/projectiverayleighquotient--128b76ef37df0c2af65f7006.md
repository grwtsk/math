# projectiveRayleighQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03f63a7e3056ebc4555a087c40486c8efc867fb727b0479a1ecf6fbfa848adc0",
  "kind": "def",
  "lexical_name": "projectiveRayleighQuotient",
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
  "slug": "projectiverayleighquotient--128b76ef37df0c2af65f7006",
  "source": {
    "blob": "651a664aafbfbec4e240080b81a232f6ea036323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:128b76ef37df0c2af65f7006e91e20f193e8611bbda74501b7892f8c4b04333b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03f63a7e3056ebc4555a087c40486c8efc867fb727b0479a1ecf6fbfa848adc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def projectiveRayleighQuotient (A : H →L[ℂ] H) :
    Projectivization ℂ H → ℝ :=
  Projectivization.lift
    (fun v ↦ rayleighQuotientBase A (v : H))
    (by
      intro a b c hab
      have hc : c ≠ 0 := by
        intro hc
        apply a.property
        rw [hab, hc, zero_smul]
      rw [hab]
      exact rayleighQuotientBase_smul A (b : H) hc)

/-- Evaluating the descended function at a projective class recovers any representative. -/
@[surface_novel, surface_published, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `651a664aafbfbec4e240080b81a232f6ea036323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
