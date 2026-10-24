# cosPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17f7588e38ab8a4e47cb434d0253fb3c28bee5b1f7cdf03158ebbed1dbac2b2c",
  "kind": "def",
  "lexical_name": "cosPartialHomeomorph",
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
  "slug": "cospartialhomeomorph--cb0cdba68094be7bd554cc09",
  "source": {
    "blob": "32a0880f3315047038b503bbc3a27fd5a6c8e009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 443,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb0cdba68094be7bd554cc09f690525f9d964cc1973723bf6f986cf7605c6ccb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17f7588e38ab8a4e47cb434d0253fb3c28bee5b1f7cdf03158ebbed1dbac2b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cosPartialHomeomorph : OpenPartialHomeomorph ℝ ℝ where
  toFun := cos
  invFun := arccos
  source := Ioo 0 π
  target := Ioo (-1) 1
  map_source' := by grind [arccos_pos, arccos_lt_pi, arccos_cos]
  map_target' _ hy := ⟨arccos_pos.mpr hy.2, arccos_lt_pi.mpr hy.1⟩
  left_inv' _ hx := arccos_cos hx.1.le hx.2.le
  right_inv' _ hy := cos_arccos hy.1.le hy.2.le
  open_source := isOpen_Ioo
  open_target := isOpen_Ioo
  continuousOn_toFun := continuous_cos.continuousOn
  continuousOn_invFun := continuous_arccos.continuousOn

/-- `Real.cos` and `Real.arccos` as a (partial) equivalence from `[0, π]` to `[-1, 1]` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a0880f3315047038b503bbc3a27fd5a6c8e009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
