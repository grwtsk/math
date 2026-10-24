# Subsemiring.commSemiringTopologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d739b387548d3e6c15016aa69602dab683e2ade493d4a2409a31497395e626ac",
  "kind": "abbrev",
  "lexical_name": "Subsemiring.commSemiringTopologicalClosure",
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
  "slug": "subsemiring-commsemiringtopologicalclosure--dfe1ad3f7a335519413d4a9a",
  "source": {
    "blob": "4803bf4c3e52790abb9d70c86b7f849f41363357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfe1ad3f7a335519413d4a9a2ac30c033e4e8e8e57954e6903345ed6659265d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d739b387548d3e6c15016aa69602dab683e2ade493d4a2409a31497395e626ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Subsemiring.commSemiringTopologicalClosure [T2Space R] (s : Subsemiring R)
    (hs : ∀ x y : s, x * y = y * x) : CommSemiring s.topologicalClosure :=
  haveI : IsMulCommutative s := ⟨⟨hs⟩⟩
  inferInstance

end

section

variable {S : Type*} [TopologicalSpace R] [TopologicalSpace S]

/-- The product topology on the Cartesian product of two topological semirings
  makes the product into a topological semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant023d6cbe188efb62938cd6556418b85c7df7cb641249946f8cf750bbc2e178a4.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4803bf4c3e52790abb9d70c86b7f849f41363357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
