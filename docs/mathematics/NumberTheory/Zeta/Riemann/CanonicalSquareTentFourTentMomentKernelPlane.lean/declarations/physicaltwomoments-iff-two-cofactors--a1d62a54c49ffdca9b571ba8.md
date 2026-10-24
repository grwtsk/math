# physicalTwoMoments_iff_two_cofactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3153687c-c27f-a486-a4a5-90080f721f43",
  "kind": "theorem",
  "lexical_name": "physicalTwoMoments_iff_two_cofactors",
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
  "slug": "physicaltwomoments-iff-two-cofactors--a1d62a54c49ffdca9b571ba8",
  "source": {
    "blob": "3fc41b00fb882d2dc93f46e9d2bb79bafec780d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 281,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1d62a54c49ffdca9b571ba87afe689796f9d1229377c550c6066c16e84589f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3153687c-c27f-a486-a4a5-90080f721f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalTwoMoments_iff_two_cofactors (u : Combination 3) :
    BombieriZeroMomentConditions (actualFourTentFunction u) ↔
      ∃ a b : ℂ, ∀ i : Fin 4,
        u i = a * stageFourKernelVector i + b * stageFiveKernelVector i := by
  constructor
  · intro h
    apply (twoMomentRows_zero_iff_two_cofactors u).mp
    constructor
    · rw [← actualFourTent_ordinaryMoment_eq]
      exact h.ordinaryMoment_zero
    · rw [← actualFourTent_reciprocalMoment_eq]
      exact h.multiplicativeMoment_zero
  · intro h
    obtain ⟨hOrd, hRec⟩ := (twoMomentRows_zero_iff_two_cofactors u).mpr h
    constructor
    · change bombieriMultiplicativeMoment (actualFourTentFunction u) = 0
      rw [actualFourTent_reciprocalMoment_eq]
      exact hRec
    · rw [actualFourTent_ordinaryMoment_eq]
      exact hOrd

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFourTentMomentKernelPlane
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFourTentMomentKernelPlane.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc41b00fb882d2dc93f46e9d2bb79bafec780d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
