# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddbcad572f986f1dd1cd5d59869bbf79a0da4a5cace776399283da4d92d8082a",
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
  "slug": "instance--1bd4bbfa4bd3e65ade2de783",
  "source": {
    "blob": "fd9208dc2721913f04bd3568fd33c57b86ad0cf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bd4bbfa4bd3e65ade2de7835a86b1f3bcb6f7075910275e4e899a0511d3bd7c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddbcad572f986f1dd1cd5d59869bbf79a0da4a5cace776399283da4d92d8082a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R : Type*} [PartialOrder R] [NonUnitalSemiring R] [StarRing R]
    [StarOrderedRing R] [TopologicalSpace R] [ContinuousStar R] [IsTopologicalSemiring R]
    [ContinuousSqrt R] : StarOrderedRing C(α, R) := by
  refine StarOrderedRing.of_le_iff ?_
  intro f g
  constructor
  · rw [ContinuousMap.le_def]
    intro h
    use (mk _ ContinuousSqrt.continuousOn_sqrt.restrict).comp
      ⟨_, map_continuous (f.prodMk g) |>.codRestrict (s := {x | x.1 ≤ x.2}) (by exact h)⟩
    ext x
    simpa [IsSelfAdjoint.star_eq <| .of_nonneg (ContinuousSqrt.sqrt_nonneg (f x, g x) (h x))]
      using ContinuousSqrt.sqrt_mul_sqrt (f x, g x) (h x)
  · rintro ⟨p, rfl⟩
    exact fun x ↦ le_add_of_nonneg_right (star_mul_self_nonneg (p x))

end ContinuousMap

namespace ContinuousMapZero

variable {α : Type*} [TopologicalSpace α] [Zero α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd9208dc2721913f04bd3568fd33c57b86ad0cf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
