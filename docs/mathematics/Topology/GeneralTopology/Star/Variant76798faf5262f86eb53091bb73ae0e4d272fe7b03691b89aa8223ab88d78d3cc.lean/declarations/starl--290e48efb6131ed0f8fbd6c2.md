# starL'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52fe48d1e0699474fd2d9a5d997da6c406c009d6e848b1e60bc400f79f722221",
  "kind": "def",
  "lexical_name": "starL'",
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
  "slug": "starl--290e48efb6131ed0f8fbd6c2",
  "source": {
    "blob": "98f2648daf5d39aaf025160a85ac6c3b9eb59e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:290e48efb6131ed0f8fbd6c2da7a09cb50c89b4c01a08932c6319d1da69b347b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52fe48d1e0699474fd2d9a5d997da6c406c009d6e848b1e60bc400f79f722221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starL' (R : Type*) {A : Type*} [CommSemiring R] [StarRing R] [TrivialStar R] [AddCommMonoid A]
    [StarAddMonoid A] [Module R A] [StarModule R A] [TopologicalSpace A] [ContinuousStar A] :
    A ≃L[R] A :=
  (starL R : A ≃L⋆[R] A).trans
    ({ AddEquiv.refl A with
        map_smul' := fun r a => by simp [starRingEnd_apply]
        continuous_toFun := continuous_id
        continuous_invFun := continuous_id } :
      A ≃L⋆[R] A)

variable (R : Type*) (A : Type*) [Semiring R] [StarMul R] [TrivialStar R] [AddCommGroup A]
  [Module R A] [StarAddMonoid A] [StarModule R A] [Invertible (2 : R)] [TopologicalSpace A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variant76798faf5262f86eb53091bb73ae0e4d272fe7b03691b89aa8223ab88d78d3cc.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f2648daf5d39aaf025160a85ac6c3b9eb59e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
