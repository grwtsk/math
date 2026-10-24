# holonomyFixedSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7f7dac612a0887b89ab8df14f13a3abb3c4bcac9e73b84e9c9e13066d46fa66",
  "kind": "def",
  "lexical_name": "holonomyFixedSubgroup",
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
  "slug": "holonomyfixedsubgroup--7a538271dac534035b8848d8",
  "source": {
    "blob": "3f9769ac436c4d1c8e1ff67c46aa3769ac59d5e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 61,
    "path": "GRWTSK/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a538271dac534035b8848d88140632cd29744f60e6477abe9c63a227028422e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7f7dac612a0887b89ab8df14f13a3abb3c4bcac9e73b84e9c9e13066d46fa66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def holonomyFixedSubgroup
    {Loop : Type u} {Object : Type v} [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (object : Object) :
    Subgroup Loop where
  carrier := {loop | holonomy loop object = object}
  one_mem' := by simp
  mul_mem' := by
    intro left right left_fixed right_fixed
    simp only [Set.mem_setOf_eq, map_mul]
    change holonomy left (holonomy right object) = object
    rw [right_fixed, left_fixed]
  inv_mem' := by
    intro loop fixed
    simp only [Set.mem_setOf_eq, map_inv]
    change holonomy loop object = object at fixed
    calc
      (holonomy loop).symm object =
          (holonomy loop).symm (holonomy loop object) :=
        congrArg (holonomy loop).symm fixed.symm
      _ = object := (holonomy loop).symm_apply_apply object

/--
Checking holonomy on a certified generating set checks every loop.  No
enumeration of all loops and no scheduling heuristic enters the proof.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f9769ac436c4d1c8e1ff67c46aa3769ac59d5e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
