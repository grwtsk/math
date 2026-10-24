# mapRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:275a8a2b621743a4d08cf3d31807facdb991486c74c5f46de07e8ef399e6f7d4",
  "kind": "def",
  "lexical_name": "mapRingEquiv",
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
  "slug": "mapringequiv--2b25f3b6766260cc9e517d9d",
  "source": {
    "blob": "f9d3ad869e19ba268a11dd8bca70361eaa4d45a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b25f3b6766260cc9e517d9d5b8c3af41d23766d05beb5dce27e99984ebd0a10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:275a8a2b621743a4d08cf3d31807facdb991486c74c5f46de07e8ef399e6f7d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapRingEquiv (f : α ≃+* β) (hf : Continuous f) (hf' : Continuous f.symm) :
    Completion α ≃+* Completion β :=
  .ofRingHom (mapRingHom f.toRingHom hf) (mapRingHom f.symm.toRingHom hf')
    (by simp [mapRingHom_comp]) (by simp [mapRingHom_comp])

section Algebra

variable (A : Type*) [Ring A] [UniformSpace A] [IsUniformAddGroup A] [IsTopologicalRing A]
  (R : Type*) [CommSemiring R] [Algebra R A] [UniformContinuousConstSMul R A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d3ad869e19ba268a11dd8bca70361eaa4d45a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
