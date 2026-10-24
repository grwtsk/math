# compLinearMapₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:480380b7ddf3b00a1be774137d39cd4c55093b2f0da1a69a0646a40f8be04db4",
  "kind": "def",
  "lexical_name": "compLinearMapₗ",
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
  "slug": "complinearmap--0fb124ebde6d3d72f1c45569",
  "source": {
    "blob": "b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1090,
    "line": 1080,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fb124ebde6d3d72f1c455695a9cad73c4422bae0e8251354abaaa6a2949f4da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:480380b7ddf3b00a1be774137d39cd4c55093b2f0da1a69a0646a40f8be04db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1090.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def compLinearMapₗ (f : Π (i : ι), M₁ i →ₗ[R] M₁' i) :
    (MultilinearMap R M₁' M₂) →ₗ[R] MultilinearMap R M₁ M₂ where
  toFun := fun g ↦ g.compLinearMap f
  map_add' := fun _ _ ↦ rfl
  map_smul' := fun _ _ ↦ rfl

/-- An isomorphism of multilinear maps given an isomorphism between their domains.

This is `MultilinearMap.compLinearMap` as a linear equivalence,
and the multilinear version of `LinearEquiv.congrLeft`. -/
@[simps! apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
