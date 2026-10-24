# reduce_fold_fn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:035362b57de111e0ece03606cf1f184b1d9f11d0abfbc0465b92032a24acbac9",
  "kind": "def",
  "lexical_name": "reduce_fold_fn",
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
  "slug": "reduce-fold-fn--8aee185253c9c7735d44d09c",
  "source": {
    "blob": "3db4e69b4832b58856cc7695dbea734d3849dc7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8aee185253c9c7735d44d09ce98320e72158fe9b1ba5dc7b9d0cf89d759af07c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:035362b57de111e0ece03606cf1f184b1d9f11d0abfbc0465b92032a24acbac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduce_fold_fn (assignments : Array Assignment) (acc : ReduceResult (PosFin n))
    (l : Literal (PosFin n)) :
    ReduceResult (PosFin n) :=
  match acc with
    | .encounteredBoth => .encounteredBoth
    | .reducedToEmpty =>
      match assignments[l.1.1]! with
      | .pos =>
        if l.2 then
          .reducedToUnit l
        else
          .reducedToEmpty
      | .neg =>
        if !l.2 then
          .reducedToUnit l
        else
          .reducedToEmpty
      | .both => .encounteredBoth
      | .unassigned => .reducedToUnit l
    | .reducedToUnit l' =>
      match assignments[l.1.1]! with
      | .pos =>
        if l.2 then
          .reducedToNonunit -- Assignment fails to refute both l and l'
        else
          .reducedToUnit l'
      | .neg =>
        if !l.2 then
          .reducedToNonunit -- Assignment fails to refute both l and l'
        else
          .reducedToUnit l'
      | .both => .encounteredBoth
      | .unassigned => .reducedToNonunit -- Assignments fails to refute both l and l'
    | .reducedToNonunit => .reducedToNonunit

/--
The `reduce` function takes in a clause `c` and takes in an array of assignments and attempts to
eliminate every literal in the clause that is not compatible with the `assignments` argument.
- If `reduce` returns `encounteredBoth`, then this means that the `assignments` array has a `both`
  Assignment and is therefore fundamentally unsatisfiable.
- If `reduce` returns `reducedToEmpty`, then this means that every literal in `c` is incompatible
  with `assignments`. In other words, this means that the conjunction of `assignments` and `c` is
  unsatisfiable.
- If `reduce` returns `reducedToUnit l`, then this means that every literal in `c` is incompatible
  with `assignments` except for `l`. In other words, this means that the conjunction of
  `assignments` and `c` entail `l`.
- If `reduce` returns `reducedToNonunit`, then this means that there are multiple literals in `c`
  that are compatible with `assignments`. This is a failure condition for `confirmRupHint`
  (in `LRAT.Formula.Implementation.lean`) which calls `reduce`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db4e69b4832b58856cc7695dbea734d3849dc7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
