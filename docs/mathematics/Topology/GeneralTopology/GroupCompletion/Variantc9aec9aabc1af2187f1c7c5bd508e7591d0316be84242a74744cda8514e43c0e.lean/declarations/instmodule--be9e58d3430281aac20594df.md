# instModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4faacc36c2a3b488242cfd75e230f2ba5a1bc7daa76051657451e824268be99b",
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
  "slug": "instmodule--be9e58d3430281aac20594df",
  "source": {
    "blob": "f9be7a663fae22b2cb6c343183574513a6df8f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be9e58d3430281aac20594df91d11149ddd929a4a44100a96e70e3d644b235df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4faacc36c2a3b488242cfd75e230f2ba5a1bc7daa76051657451e824268be99b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule [Semiring R] [Module R α] [UniformContinuousConstSMul R α] :
    Module R (Completion α) :=
  { (inferInstance : DistribMulAction R <| Completion α),
    (inferInstance : MulActionWithZero R <| Completion α) with
    add_smul := fun a b ↦
      ext' (continuous_const_smul _) ((continuous_const_smul _).add (continuous_const_smul _))
        fun x ↦ by
          rw [← coe_smul, add_smul, coe_add, coe_smul, coe_smul] }

end UniformAddCommGroup

end UniformSpace.Completion

section AddMonoidHom

variable [UniformSpace α] [AddGroup α] [IsUniformAddGroup α] [UniformSpace β] [AddGroup β]
  [IsUniformAddGroup β]

open UniformSpace UniformSpace.Completion

/-- Extension to the completion of a continuous group hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9be7a663fae22b2cb6c343183574513a6df8f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
