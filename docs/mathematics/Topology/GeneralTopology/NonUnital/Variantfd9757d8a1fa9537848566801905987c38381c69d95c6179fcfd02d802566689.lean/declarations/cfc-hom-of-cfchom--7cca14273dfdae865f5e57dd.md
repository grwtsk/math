# cfcₙHom_of_cfcHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e1b48ae653f742a6ec2d43fd7437e06b306d1ed0f420d9145f01fa933d13e17",
  "kind": "def",
  "lexical_name": "cfcₙHom_of_cfcHom",
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
  "slug": "cfc-hom-of-cfchom--7cca14273dfdae865f5e57dd",
  "source": {
    "blob": "20898072847cd652759206ccde7a3ebb3910bac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 814,
    "line": 807,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cca14273dfdae865f5e57ddca8e8da1229349a822bc5ec6790a0b09bb050782",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e1b48ae653f742a6ec2d43fd7437e06b306d1ed0f420d9145f01fa933d13e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–814.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cfcₙHom_of_cfcHom [ContinuousFunctionalCalculus R A p] {a : A} (ha : p a) :
    C(σₙ R a, R)₀ →⋆ₙₐ[R] A :=
  let e := ContinuousMapZero.toContinuousMapHom (X := σₙ R a) (R := R)
  let f : C(spectrum R a, quasispectrum R a) :=
    ⟨_, continuous_inclusion <| spectrum_subset_quasispectrum R a⟩
  let ψ := ContinuousMap.compStarAlgHom' R R f
  (cfcHom ha (R := R)).toNonUnitalStarAlgHom.comp <| ψ.toNonUnitalStarAlgHom.comp e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantfd9757d8a1fa9537848566801905987c38381c69d95c6179fcfd02d802566689.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20898072847cd652759206ccde7a3ebb3910bac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
