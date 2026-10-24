# exist_eq_reflection_of_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1b7a062-1bbf-8149-451b-4b0d92702682",
  "kind": "theorem",
  "lexical_name": "exist_eq_reflection_of_mapsTo",
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
  "slug": "exist-eq-reflection-of-mapsto--1c1d7c9f016a4a35ac99ce58",
  "source": {
    "blob": "d6d3a61f6cbfb95e727083ff9be7c026a7283e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1d7c9f016a4a35ac99ce5892af7a3ad1cfc4ea470b5d455e37b0e5651c2301",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1b7a062-1bbf-8149-451b-4b0d92702682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exist_eq_reflection_of_mapsTo :
    ∃ k, root k = (preReflection (root i) (p.flip (coroot i))) (root j) :=
  h i (mem_range_self j)

variable (hp : ∀ i, p.toLinearMap (root i) (coroot i) = 2)
include hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6d3a61f6cbfb95e727083ff9be7c026a7283e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
