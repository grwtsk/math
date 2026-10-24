# commGroupOfCycleCenterQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:244e79b70af7af8b670299344ffabd7a0d52f57e04a165f63489b43e0fa07ff1",
  "kind": "def",
  "lexical_name": "commGroupOfCycleCenterQuotient",
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
  "slug": "commgroupofcyclecenterquotient--a182402ae557bf13171b1250",
  "source": {
    "blob": "ab4df74739cd427e9035d6118afbba657142a311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 493,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a182402ae557bf13171b12501c0cd38fd44722f11b1b46122714cf6ea7c32b84",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:244e79b70af7af8b670299344ffabd7a0d52f57e04a165f63489b43e0fa07ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commGroupOfCycleCenterQuotient [IsCyclic H] (f : G →* H) (hf : f.ker ≤ center G) :
    CommGroup G :=
  { show Group G by infer_instance with mul_comm := commutative_of_cyclic_center_quotient f hf }
#align comm_group_of_cycle_center_quotient commGroupOfCycleCenterQuotient
#align commutative_of_add_cycle_center_quotient commutativeOfAddCycleCenterQuotient

end QuotientCenter

namespace IsSimpleGroup

section CommGroup

variable [CommGroup α] [IsSimpleGroup α]

@[to_additive IsSimpleAddGroup.isAddCyclic]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4df74739cd427e9035d6118afbba657142a311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
