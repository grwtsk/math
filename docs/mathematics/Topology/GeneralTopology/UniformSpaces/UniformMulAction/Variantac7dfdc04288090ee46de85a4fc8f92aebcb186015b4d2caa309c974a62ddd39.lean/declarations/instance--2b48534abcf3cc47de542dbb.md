# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6a3a6e99cab2c4125f26765d6e75f3e0b6ef1b78535fc9f44ed7d4d0017b475",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2b48534abcf3cc47de542dbb",
  "source": {
    "blob": "40436dc51b5620dd4136bb8e49a83d44e593b414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b48534abcf3cc47de542dbb5416c8ba1fdb0dabd086c7b130267bc68ac9e20d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6a3a6e99cab2c4125f26765d6e75f3e0b6ef1b78535fc9f44ed7d4d0017b475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [Monoid M] [MulAction M X] [UniformContinuousConstSMul M X] :
    MulAction M (Completion X) where
  smul := (· • ·)
  one_smul := ext' (continuous_const_smul _) continuous_id fun a => by rw [← coe_smul, one_smul]
  mul_smul x y :=
    ext' (continuous_const_smul _) ((continuous_const_smul _).const_smul _) fun a => by
      simp only [← coe_smul, mul_smul]

end Completion

end UniformSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantac7dfdc04288090ee46de85a4fc8f92aebcb186015b4d2caa309c974a62ddd39.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40436dc51b5620dd4136bb8e49a83d44e593b414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
