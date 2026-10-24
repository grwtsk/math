# QuotientGroup.measurableSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3727fb52806714d5a333a6670e3512299d53399b2c7ba3954c1c3c559cb913ca",
  "kind": "instance",
  "lexical_name": "QuotientGroup.measurableSMul",
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
  "slug": "quotientgroup-measurablesmul--baf8d91616b456aca224b0c6",
  "source": {
    "blob": "aba70ce7bfdd38ef616ea18f3d7f50ac02c4371b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baf8d91616b456aca224b0c656ad00611a87cd26376b8d9dbcb8ffcf156e6b68",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3727fb52806714d5a333a6670e3512299d53399b2c7ba3954c1c3c559cb913ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance QuotientGroup.measurableSMul [MeasurableSpace (G ⧸ Γ)] [BorelSpace (G ⧸ Γ)] :
    MeasurableSMul G (G ⧸ Γ) where
  measurable_const_smul g := (continuous_const_smul g).measurable
  measurable_smul_const x := (QuotientGroup.continuous_smul₁ x).measurable
#align quotient_group.has_measurable_smul QuotientGroup.measurableSMul
#align quotient_add_group.has_measurable_vadd QuotientAddGroup.measurableVAdd

variable {𝓕 : Set G} (h𝓕 : IsFundamentalDomain (Subgroup.opposite Γ) 𝓕 μ)

variable [Countable Γ] [MeasurableSpace (G ⧸ Γ)] [BorelSpace (G ⧸ Γ)]

/-- The pushforward to the coset space `G ⧸ Γ` of the restriction of a both left- and right-
  invariant measure on `G` to a fundamental domain `𝓕` is a `G`-invariant measure on `G ⧸ Γ`. -/
@[to_additive "The pushforward to the coset space `G ⧸ Γ` of the restriction of a both left- and
  right-invariant measure on an additive topological group `G` to a fundamental domain `𝓕` is a
  `G`-invariant measure on `G ⧸ Γ`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variant6bce50b6f56b445ec6d891d5ebf06c5b0ec5243998989437a40da3394eff17e5.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aba70ce7bfdd38ef616ea18f3d7f50ac02c4371b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
