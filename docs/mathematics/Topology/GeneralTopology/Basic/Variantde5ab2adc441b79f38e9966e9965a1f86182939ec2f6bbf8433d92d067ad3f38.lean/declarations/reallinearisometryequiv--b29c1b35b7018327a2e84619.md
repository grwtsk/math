# realLinearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:083cad7ca462073c9566b40cea7b87286bf93dfc8bf9842dae2a943d8c8d6be4",
  "kind": "def",
  "lexical_name": "realLinearIsometryEquiv",
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
  "slug": "reallinearisometryequiv--b29c1b35b7018327a2e84619",
  "source": {
    "blob": "4d6ac4cede463d1008a60dfc268c5a8309a312a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1263,
    "line": 1257,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b29c1b35b7018327a2e8461923ea648caa11fc751e91ad4761a22d69fdd0b2da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:083cad7ca462073c9566b40cea7b87286bf93dfc8bf9842dae2a943d8c8d6be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1257–1263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def realLinearIsometryEquiv (h : I = (0 : K)) : K ≃ₗᵢ[ℝ] ℝ where
  map_smul' := smul_re
  norm_map' z := by rw [← re_add_im z]; simp [-re_add_im, h]
  __ := realRingEquiv h

end CaseSpecific

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantde5ab2adc441b79f38e9966e9965a1f86182939ec2f6bbf8433d92d067ad3f38.lean#L1257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6ac4cede463d1008a60dfc268c5a8309a312a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
