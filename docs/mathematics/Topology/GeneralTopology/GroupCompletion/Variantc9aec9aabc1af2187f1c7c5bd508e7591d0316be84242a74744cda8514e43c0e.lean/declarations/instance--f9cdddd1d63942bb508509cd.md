# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ea41216deeb5950b5bdd263f1c9ff6937c49508c61809c701f6c25d3d9fdb0a",
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
  "slug": "instance--f9cdddd1d63942bb508509cd",
  "source": {
    "blob": "f9be7a663fae22b2cb6c343183574513a6df8f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9cdddd1d63942bb508509cdfa0dd710f5dd6f259bfc65b4cf2adea3ff27623b",
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

Occurrence: `declaration:0ea41216deeb5950b5bdd263f1c9ff6937c49508c61809c701f6c25d3d9fdb0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {M} [Monoid M] [DistribMulAction M α] [UniformContinuousConstSMul M α] :
    DistribMulAction M (Completion α) :=
  { (inferInstance : MulAction M <| Completion α) with
    smul_add := fun r x y ↦
      induction_on₂ x y
        (isClosed_eq ((continuous_fst.add continuous_snd).const_smul _)
          ((continuous_fst.const_smul _).add (continuous_snd.const_smul _)))
        fun a b ↦ by simp only [← coe_add, ← coe_smul, smul_add]
    smul_zero := fun r ↦ by rw [← coe_zero, ← coe_smul, smul_zero r] }

/-- The map from a group to its completion as a group hom. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9be7a663fae22b2cb6c343183574513a6df8f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
