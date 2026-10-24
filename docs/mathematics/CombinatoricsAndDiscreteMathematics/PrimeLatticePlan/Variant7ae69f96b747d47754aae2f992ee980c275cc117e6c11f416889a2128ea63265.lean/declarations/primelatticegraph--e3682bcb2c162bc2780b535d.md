# PrimeLatticeGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a667450dd70510aad7f5285e85b88d5da3c4c19a64d9e2e5325a3e3b56357dee",
  "kind": "structure",
  "lexical_name": "PrimeLatticeGraph",
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
  "slug": "primelatticegraph--e3682bcb2c162bc2780b535d",
  "source": {
    "blob": "6423e14e00e7636182971c33596fd3ff550f97f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3682bcb2c162bc2780b535d557450675d3f3c42480634a7990ee4ce21e6cd6e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a667450dd70510aad7f5285e85b88d5da3c4c19a64d9e2e5325a3e3b56357dee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeLatticeGraph where
  Node : Type
  nodeFintype : Fintype Node
  dependsOn : Node → Node → Prop
  grade : Node → ℕ
  dependency_grade_lt : ∀ {dependency dependent},
    dependsOn dependency dependent → grade dependency < grade dependent
  task : Node → TheoremTask

namespace PrimeLatticeGraph

variable (graph : PrimeLatticeGraph)

/-- A proof cone contains every direct prerequisite of each selected node. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6423e14e00e7636182971c33596fd3ff550f97f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
