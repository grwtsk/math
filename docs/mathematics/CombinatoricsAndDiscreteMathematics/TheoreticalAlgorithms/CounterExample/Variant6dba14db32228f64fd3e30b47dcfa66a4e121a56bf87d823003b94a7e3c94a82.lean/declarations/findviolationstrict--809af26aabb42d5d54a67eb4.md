# findViolationStrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0efba9305161518fed0a12d6b1d3eb063470d84f374750c8d3bc2dd21036b987",
  "kind": "def",
  "lexical_name": "findViolationStrict",
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
  "slug": "findviolationstrict--809af26aabb42d5d54a67eb4",
  "source": {
    "blob": "6e5450206899b217c114da97d7bdc0abef5bb173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:809af26aabb42d5d54a67eb41b2af07761bc48850fcd48143e66f577dc869fd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0efba9305161518fed0a12d6b1d3eb063470d84f374750c8d3bc2dd21036b987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findViolationStrict (e : Expr) (domain : Box) (limit : ℚ)
    (cfg : GlobalOptConfig := {}) : Option CounterExample :=
  let result := globalMaximizeCore e domain cfg

  let max_lo := result.bound.lo
  let max_hi := result.bound.hi
  let best_box := result.bound.bestBox

  -- For strict inequality, we need max(f) ≥ limit (not just >)
  if max_lo ≥ limit then
    some {
      point := CounterExample.boxMidpoint best_box
      valueLo := max_lo
      valueHi := max_hi
      status := .Verified
      box := best_box
      iterations := result.bound.iterations
    }
  else if max_hi ≥ limit then
    some {
      point := CounterExample.boxMidpoint best_box
      valueLo := max_lo
      valueHi := max_hi
      status := .Candidate
      box := best_box
      iterations := result.bound.iterations
    }
  else
    none

/--
Search for a counter-example to `∀ x ∈ domain, limit < f(x)`.
A violation means `f(x) ≤ limit` for some `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5450206899b217c114da97d7bdc0abef5bb173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
