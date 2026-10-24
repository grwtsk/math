# Solution.IsPresentation.free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b0febf8-071d-0338-5b83-2669c95dde88",
  "kind": "lemma",
  "lexical_name": "Solution.IsPresentation.free",
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
  "slug": "solution-ispresentation-free--fd7cfb9cb05eaf6bbea42182",
  "source": {
    "blob": "0c872febad2b0da8cf46671fd40ddd361a895c76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd7cfb9cb05eaf6bbea42182514a000e20f95c3b0a339f09859ed983d0a6ae3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b0febf8-071d-0338-5b83-2669c95dde88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Solution.IsPresentation.free {solution : relations.Solution M}
    (h : solution.IsPresentation) :
    Module.Free A M :=
  Free.of_equiv ((solutionFinsupp_isPresentation relations).uniq h)

end Relations

variable (A)

/-- The presentation of the `A`-module `G →₀ A` with generators indexed by `G`,
and no relation. (Note that there is an auxiliary universe parameter `w₁` for the
empty type `R`.) -/
@[simps! G R var]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variantadb9555b4c30e465fa31c3ed41867e3e77f84c5cc1e5a52ee90d6838d4a7d071.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c872febad2b0da8cf46671fd40ddd361a895c76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
