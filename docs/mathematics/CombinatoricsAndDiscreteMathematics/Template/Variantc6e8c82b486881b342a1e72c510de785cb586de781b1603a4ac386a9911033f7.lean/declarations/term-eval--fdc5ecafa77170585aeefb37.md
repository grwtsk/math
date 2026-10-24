# Term.eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7da3d70da4ca4a6d0a6f7415ca56d7fb58ee2335e5bf32520bdecef4388ea486",
  "kind": "def",
  "lexical_name": "Term.eval",
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
  "slug": "term-eval--fdc5ecafa77170585aeefb37",
  "source": {
    "blob": "f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdc5ecafa77170585aeefb37d369410b213ce025b015a7b85bfabc3464b48e35",
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

Occurrence: `declaration:7da3d70da4ca4a6d0a6f7415ca56d7fb58ee2335e5bf32520bdecef4388ea486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Term.eval (term : Term) (environment : Environment) : EvalResult :=
  match term with
  | .tallyLiteral tallyCount =>
      .value (.tally (Tally.ofNat tallyCount))
  | .natLiteral value => .value (.nat value)
  | .boolLiteral value => .value (.bool value)
  | .classLiteral value => .value (.classId value)
  | .primeLiteral value => .value (.primeId value)
  | .variable symbol =>
      match environment.lookup symbol with
      | some value => .value value
      | none => .missingEvidence symbol.name
  | .count inner =>
      match inner.eval environment with
      | .value (.tally tally) => .value (.nat tally.count)
      | .missingEvidence symbol => .missingEvidence symbol
      | _ => .typedFailure
  | .add left right =>
      match left.eval environment, right.eval environment with
      | .value (.nat leftValue), .value (.nat rightValue) =>
          .value (.nat (leftValue + rightValue))
      | .missingEvidence symbol, _ | _, .missingEvidence symbol =>
          .missingEvidence symbol
      | _, _ => .typedFailure
  | .equal left right =>
      match left.eval environment, right.eval environment with
      | .value leftValue, .value rightValue =>
          if leftValue.sort = rightValue.sort
          then .value (.bool (leftValue = rightValue))
          else .typedFailure
      | .missingEvidence symbol, _ | _, .missingEvidence symbol =>
          .missingEvidence symbol
      | _, _ => .typedFailure
  | .conditional condition whenTrue whenFalse =>
      match condition.eval environment with
      | .value (.bool true) => whenTrue.eval environment
      | .value (.bool false) => whenFalse.eval environment
      | .missingEvidence symbol => .missingEvidence symbol
      | _ => .typedFailure
  | .transport _ inner => inner.eval environment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variantc6e8c82b486881b342a1e72c510de785cb586de781b1603a4ac386a9911033f7.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e2523e56f49e1b79778f5c8c5646c0bb4e5c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
