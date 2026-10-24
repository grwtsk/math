# selfEquivSigmaOrbitsQuotientStabilizer'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a88bb8e6c64bc68cdf1b3eb9adee8a0aa3a45fb00d8b44f29eacf155b6c64599",
  "kind": "def",
  "lexical_name": "selfEquivSigmaOrbitsQuotientStabilizer'",
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
  "slug": "selfequivsigmaorbitsquotientstabilizer--9d8553587053b828f084d7a1",
  "source": {
    "blob": "ac67a7792bf237603a0e187dcf3ff0d9e1aa7442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 251,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d8553587053b828f084d7a1d3fd4b10ad9bf7148930e954751d3382627586f6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a88bb8e6c64bc68cdf1b3eb9adee8a0aa3a45fb00d8b44f29eacf155b6c64599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def selfEquivSigmaOrbitsQuotientStabilizer' {φ : Ω → β}
    (hφ : LeftInverse Quotient.mk'' φ) : β ≃ Σω : Ω, α ⧸ stabilizer α (φ ω) :=
  calc
    β ≃ Σω : Ω, orbitRel.Quotient.orbit ω := selfEquivSigmaOrbits' α β
    _ ≃ Σω : Ω, α ⧸ stabilizer α (φ ω) :=
      Equiv.sigmaCongrRight fun ω =>
        (Equiv.Set.ofEq <| orbitRel.Quotient.orbit_eq_orbit_out _ hφ).trans <|
          orbitEquivQuotientStabilizer α (φ ω)
#align mul_action.self_equiv_sigma_orbits_quotient_stabilizer' MulAction.selfEquivSigmaOrbitsQuotientStabilizer'
#align add_action.self_equiv_sigma_orbits_quotient_stabilizer' AddAction.selfEquivSigmaOrbitsQuotientStabilizer'

/-- **Class formula** for a finite group acting on a finite type. See
`MulAction.card_eq_sum_card_group_div_card_stabilizer` for a specialized version using
`Quotient.out'`. -/
@[to_additive
      "**Class formula** for a finite group acting on a finite type. See
      `AddAction.card_eq_sum_card_addGroup_div_card_stabilizer` for a specialized version using
      `Quotient.out'`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac67a7792bf237603a0e187dcf3ff0d9e1aa7442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
