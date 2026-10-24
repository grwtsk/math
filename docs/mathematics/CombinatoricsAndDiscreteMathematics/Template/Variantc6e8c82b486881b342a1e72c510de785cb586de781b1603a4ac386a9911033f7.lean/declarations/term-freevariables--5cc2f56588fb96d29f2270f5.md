# Term.freeVariables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9914d6a031355004978789df22d40842b3af5a8d42a3e1e1a5ae6aa5cf29835",
  "kind": "def",
  "lexical_name": "Term.freeVariables",
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
  "slug": "term-freevariables--5cc2f56588fb96d29f2270f5",
  "source": {
    "blob": "f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cc2f56588fb96d29f2270f546f72619d06ac0fc9ff33b1b73c2426b89c7afea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9914d6a031355004978789df22d40842b3af5a8d42a3e1e1a5ae6aa5cf29835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Term.freeVariables : Term → Finset Symbol
  | .tallyLiteral _
  | .natLiteral _
  | .boolLiteral _
  | .classLiteral _
  | .primeLiteral _ => ∅
  | .variable symbol => {symbol}
  | .count term => term.freeVariables
  | .add left right
  | .equal left right =>
      left.freeVariables ∪ right.freeVariables
  | .conditional condition whenTrue whenFalse =>
      condition.freeVariables ∪
        whenTrue.freeVariables ∪ whenFalse.freeVariables
  | .transport _ term => term.freeVariables

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
