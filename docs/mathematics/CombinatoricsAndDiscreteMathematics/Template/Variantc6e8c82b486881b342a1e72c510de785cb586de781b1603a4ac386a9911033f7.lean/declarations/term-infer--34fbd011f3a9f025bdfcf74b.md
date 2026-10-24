# Term.infer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7923bd606cd9f72865021f731b5fb0aa180752fef41b6db973a5d2011c93b35f",
  "kind": "def",
  "lexical_name": "Term.infer",
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
  "slug": "term-infer--34fbd011f3a9f025bdfcf74b",
  "source": {
    "blob": "f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34fbd011f3a9f025bdfcf74be738f5600e79dde2368bf3dd3242285cb1ef7c01",
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

Occurrence: `declaration:7923bd606cd9f72865021f731b5fb0aa180752fef41b6db973a5d2011c93b35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Term.infer : Term → Option ValueSort
  | .tallyLiteral _ => some .tally
  | .natLiteral _ => some .nat
  | .boolLiteral _ => some .bool
  | .classLiteral _ => some .classId
  | .primeLiteral _ => some .primeId
  | .variable symbol => some symbol.sort
  | .count term =>
      if term.infer = some .tally then some .nat else none
  | .add left right =>
      if left.infer = some .nat ∧ right.infer = some .nat
      then some .nat else none
  | .equal left right =>
      match left.infer, right.infer with
      | some leftSort, some rightSort =>
          if leftSort = rightSort then some .bool else none
      | _, _ => none
  | .conditional condition whenTrue whenFalse =>
      if condition.infer = some .bool ∧
          whenTrue.infer = whenFalse.infer
      then whenTrue.infer else none
  | .transport _ term => term.infer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
