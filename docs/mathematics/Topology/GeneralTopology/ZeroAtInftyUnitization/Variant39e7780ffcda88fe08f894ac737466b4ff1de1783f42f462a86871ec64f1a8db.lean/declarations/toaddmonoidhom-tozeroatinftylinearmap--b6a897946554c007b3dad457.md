# toAddMonoidHom_toZeroAtInftyLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35565494c9e3e68d00d7460cb20cfd9c6aad3e55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f442ce0f-d643-e57f-f386-7800acb5fbb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2eb16f4-eba7-88d1-12da-b656d6466f5c",
  "kind": "lemma",
  "lexical_name": "toAddMonoidHom_toZeroAtInftyLinearMap",
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
  "slug": "toaddmonoidhom-tozeroatinftylinearmap--b6a897946554c007b3dad457",
  "source": {
    "blob": "35565494c9e3e68d00d7460cb20cfd9c6aad3e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a897946554c007b3dad457d4156e25a51a736c7b0cff44d566637e9e0ad127",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2eb16f4-eba7-88d1-12da-b656d6466f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAddMonoidHom_toZeroAtInftyLinearMap [Semiring S] [Module S R] [ContinuousConstSMul S R] :
    (toZeroAtInftyLinearMap X R S).toAddMonoidHom = toZeroAtInftyAddMonoidHom X R :=
  rfl

end ContinuousMap

namespace ZeroAtInftyContinuousMap

open Unitization

variable [TopologicalSpace R]

section AddCommGroup

variable [AddCommGroup R] [IsTopologicalAddGroup R]

variable (X R) in
/-- The canonical equivalence `Unitization R C₀(X, R) ≃ C(OnePoint X, R)` mapping `(r, f)` to the
function taking the value `r` at `∞` and `r + f x` at `x : X`. Its inverse maps `g` to
`(g ∞, fun x ↦ g x - g ∞)`. This is the lift of `ZeroAtInftyContinuousMap.toOnePoint`.

Various bundlings are available including `unitizationAddEquiv`, `unitizationLinearEquiv`,
`unitizationRingEquiv`, `unitizationAlgEquiv`, `unitizationStarAlgEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35565494c9e3e68d00d7460cb20cfd9c6aad3e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
