# Term.freeVariables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a522c558964281378e817931f1d04f10e195c477237e5c8365ef0a2706ed5c55",
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
  "slug": "term-freevariables--28b0798d9a3a1f8ddeab2c20",
  "source": {
    "blob": "56dc80634c78262541c373f9ae45f166f767ad06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28b0798d9a3a1f8ddeab2c2067c88fd4d24c6fb1f679cde29b6d58d38e8d5532",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a522c558964281378e817931f1d04f10e195c477237e5c8365ef0a2706ed5c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56dc80634c78262541c373f9ae45f166f767ad06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
