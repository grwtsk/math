# Spectral.BoundaryConditionKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c77a8ee28fc07fa6e08ec14fad423173be509b24066fec2f979bd5fe6e5bc3a",
  "kind": "inductive",
  "lexical_name": "Spectral.BoundaryConditionKind",
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
  "slug": "spectral-boundaryconditionkind--1a2d47d5aebed013734a8fcf",
  "source": {
    "blob": "93dbb4dac3eb587e2bbdbc199f68e0115fdb90ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a2d47d5aebed013734a8fcf1349927b42c0e24fb1e2cf8578b766af3484c4d8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c77a8ee28fc07fa6e08ec14fad423173be509b24066fec2f979bd5fe6e5bc3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Spectral.BoundaryConditionKind where
  | closed
  | neumann
  | dirichlet
  | robin
  | mixed
  | unknown
deriving DecidableEq, Repr

/--
Mode in which a finite spectral approximation is claimed to converge.

Eigenvalue convergence alone is not enough for trace-formula evidence unless
the trace side, spectral measure, normalization, and operator-domain
hypotheses are also certified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteHilbertConvergence/Variant8ab4a5a146d96a3b10dd45ef91a6179526770065686168c28636d3baab442e63.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93dbb4dac3eb587e2bbdbc199f68e0115fdb90ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
