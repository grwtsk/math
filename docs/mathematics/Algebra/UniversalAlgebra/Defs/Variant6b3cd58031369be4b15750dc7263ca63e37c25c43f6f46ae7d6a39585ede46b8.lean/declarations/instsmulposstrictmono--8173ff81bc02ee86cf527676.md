# instSMulPosStrictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f60698a428b6af0664b34e8c1e5ee9d2c89c4b60c92640696b6576ff604099a",
  "kind": "instance",
  "lexical_name": "instSMulPosStrictMono",
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
  "slug": "instsmulposstrictmono--8173ff81bc02ee86cf527676",
  "source": {
    "blob": "7acbad55337a121b30a6450e8cb15e8fc47fc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 380,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8173ff81bc02ee86cf527676894f2587da73dfc182b51dec2249dfd1c8dc91ea",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f60698a428b6af0664b34e8c1e5ee9d2c89c4b60c92640696b6576ff604099a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulPosStrictMono {α} [Zero α] [Preorder α] [MulAction ℝ α] [SMulPosStrictMono ℝ α] :
    SMulPosStrictMono ℝ≥0 α where
  elim _a ha _r₁ _r₂ hr := (smul_lt_smul_of_pos_right (coe_lt_coe.2 hr) ha :)

/-- If `a` is a nonnegative real number, then the closed interval `[0, a]` in `ℝ` is order
isomorphic to the interval `Set.Iic a`. -/
-- TODO: if we use `@[simps!]` it will look through the `NNReal = Subtype _` definition,
-- but if we use `@[simps]` it will not look through the `Equiv.Set.sep` definition.
-- Turning `NNReal` into a structure may be the best way to go here.
-- @[simps!? apply_coe_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acbad55337a121b30a6450e8cb15e8fc47fc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
