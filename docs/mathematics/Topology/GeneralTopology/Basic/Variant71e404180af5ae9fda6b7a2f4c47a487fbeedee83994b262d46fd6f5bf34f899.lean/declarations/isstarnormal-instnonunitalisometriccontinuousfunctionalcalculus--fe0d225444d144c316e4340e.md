# IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be9867f5121d3f5dedcc8506b5f0e6d2b856b9df6869b37fef57bf1e45ec2f43",
  "kind": "instance",
  "lexical_name": "IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus",
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
  "slug": "isstarnormal-instnonunitalisometriccontinuousfunctionalcalculus--fe0d225444d144c316e4340e",
  "source": {
    "blob": "f1001146af344d68d222246d018a5927cdfc2326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe0d225444d144c316e4340e78d395c57b4910a0285a342df45dc090f970a91b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be9867f5121d3f5dedcc8506b5f0e6d2b856b9df6869b37fef57bf1e45ec2f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsStarNormal.instNonUnitalIsometricContinuousFunctionalCalculus :
    NonUnitalIsometricContinuousFunctionalCalculus ℂ A IsStarNormal where
  isometric a ha := by
    refine AddMonoidHomClass.isometry_of_norm _ fun f ↦ ?_
    rw [← norm_inr (𝕜 := ℂ), ← inrNonUnitalStarAlgHom_apply, ← NonUnitalStarAlgHom.comp_apply,
      inr_comp_cfcₙHom_eq_cfcₙAux a, cfcₙAux]
    simp only [NonUnitalStarAlgHom.comp_assoc, NonUnitalStarAlgHom.comp_apply,
      toContinuousMapHom_apply, NonUnitalStarAlgHom.coe_coe]
    rw [norm_cfcHom (a : Unitization ℂ A), StarAlgEquiv.norm_map]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1001146af344d68d222246d018a5927cdfc2326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
