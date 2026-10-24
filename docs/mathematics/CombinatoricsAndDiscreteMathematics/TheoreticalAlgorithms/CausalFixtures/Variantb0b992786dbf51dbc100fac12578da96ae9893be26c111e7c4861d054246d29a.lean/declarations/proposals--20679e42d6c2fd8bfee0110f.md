# proposals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:766fb1b922aff50e5c141bfa84398597ba4939026202b620a4ed352dbaef297e",
  "kind": "def",
  "lexical_name": "proposals",
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
  "slug": "proposals--20679e42d6c2fd8bfee0110f",
  "source": {
    "blob": "babb68625e84ce6df6fafbcaa961ec87f29d0dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalFixtures/Variantb0b992786dbf51dbc100fac12578da96ae9893be26c111e7c4861d054246d29a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20679e42d6c2fd8bfee0110f01fd48c5528a42a6d57d132fd39e22db4c068446",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalFixtures/Variantb0b992786dbf51dbc100fac12578da96ae9893be26c111e7c4861d054246d29a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:766fb1b922aff50e5c141bfa84398597ba4939026202b620a4ed352dbaef297e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proposals : List CriticalCandidate :=
  [⟨1, 2, [], .internalOnly, 0, 0⟩,
   ⟨1, 1, [0], .internalOnly, 0, 0⟩,
   ⟨1, 1, [], .internalOnly, 0, 1⟩,
   ⟨1, 1, [], .internalOnly, 0, 0⟩,
   ⟨1, 1, [], .boundaryCover, 0, 0⟩,
   ⟨2, 1, [], .internalOnly, 0, 0⟩]

/-- Replace only the critical proposal in the fixed whole fixture; accepted state is untouched. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalFixtures/Variantb0b992786dbf51dbc100fac12578da96ae9893be26c111e7c4861d054246d29a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CausalFixtures/Variantb0b992786dbf51dbc100fac12578da96ae9893be26c111e7c4861d054246d29a.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `babb68625e84ce6df6fafbcaa961ec87f29d0dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
