# topologicalSpaceModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61e5d989c8149e43989f726406ac15912054e121e922effe09ded75c5ae0cf97",
  "kind": "def",
  "lexical_name": "topologicalSpaceModule",
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
  "slug": "topologicalspacemodule--2092b34697965ef2cd99bb8f",
  "source": {
    "blob": "58a90498b2a6754a53586c5ca5174f97b7548b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2092b34697965ef2cd99bb8f3916fff167e3e1268dc971eeff17677ec60ee8f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61e5d989c8149e43989f726406ac15912054e121e922effe09ded75c5ae0cf97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topologicalSpaceModule (M : Type*) [AddCommGroup M] [Module R M] : TopologicalSpace M :=
  (i : Ideal R).adicModuleTopology M
#align with_ideal.topological_space_module WithIdeal.topologicalSpaceModule

/-
The next examples are kept to make sure potential future refactors won't break the instance
chaining.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a90498b2a6754a53586c5ca5174f97b7548b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
