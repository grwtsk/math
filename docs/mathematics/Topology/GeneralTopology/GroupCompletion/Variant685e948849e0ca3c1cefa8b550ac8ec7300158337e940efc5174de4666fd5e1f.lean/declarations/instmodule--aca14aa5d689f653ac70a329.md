# instModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34abcea97ff6bac052b2c06eb9db034a2bef4eb82d5af0d708dafc2db2fe948e",
  "kind": "instance",
  "lexical_name": "instModule",
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
  "slug": "instmodule--aca14aa5d689f653ac70a329",
  "source": {
    "blob": "ca8b572b2dd564b9791ff886caca54be62a495e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aca14aa5d689f653ac70a329cf90458d116bf025a4187488674d562a98094ac8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34abcea97ff6bac052b2c06eb9db034a2bef4eb82d5af0d708dafc2db2fe948e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule [Semiring R] [Module R α] [UniformContinuousConstSMul R α] :
    Module R (Completion α) :=
  { (inferInstance : DistribMulAction R $ Completion α),
    (inferInstance : MulActionWithZero R $ Completion α) with
    smul := (· • ·)
    add_smul := fun a b ↦
      ext' (continuous_const_smul _) ((continuous_const_smul _).add (continuous_const_smul _))
        fun x ↦ by
          rw [← coe_smul, add_smul, coe_add, coe_smul, coe_smul] }
#align uniform_space.completion.module UniformSpace.Completion.instModule

end UniformAddCommGroup

end UniformSpace.Completion

section AddMonoidHom

variable [UniformSpace α] [AddGroup α] [UniformAddGroup α] [UniformSpace β] [AddGroup β]
  [UniformAddGroup β]

open UniformSpace UniformSpace.Completion

/-- Extension to the completion of a continuous group hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant685e948849e0ca3c1cefa8b550ac8ec7300158337e940efc5174de4666fd5e1f.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8b572b2dd564b9791ff886caca54be62a495e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
