# findViolationDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c2f1bd7fb0bdbce3cb23b1b55b85d4a55fca8a73abd49041cab947e58814969",
  "kind": "def",
  "lexical_name": "findViolationDiv",
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
  "slug": "findviolationdiv--39e205fe782f9492d8112a0d",
  "source": {
    "blob": "6e5450206899b217c114da97d7bdc0abef5bb173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39e205fe782f9492d8112a0d2f6f8c41988397c2369364ab65890bd8ba7d07a0",
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

Occurrence: `declaration:6c2f1bd7fb0bdbce3cb23b1b55b85d4a55fca8a73abd49041cab947e58814969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findViolationDiv (e : Expr) (domain : Box) (limit : ℚ)
    (cfg : GlobalOptConfig := {}) : Option CounterExample :=
  let result := globalMaximizeCoreDiv e domain cfg

  let max_lo := result.bound.lo
  let max_hi := result.bound.hi
  let best_box := result.bound.bestBox

  if max_lo > limit then
    some {
      point := CounterExample.boxMidpoint best_box
      valueLo := max_lo
      valueHi := max_hi
      status := .Verified
      box := best_box
      iterations := result.bound.iterations
    }
  else if max_hi > limit then
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

/-! ### Lower bound violation (limit ≤ f(x)) -/

/--
Search for a counter-example to the claim `∀ x ∈ domain, limit ≤ f(x)`.

Returns `some CounterExample` if the bound cannot be verified.

**Algorithm**: Minimize `f(x)` over the domain. If `min(f).hi < limit`,
the bound is definitely false.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CounterExample/Variant6dba14db32228f64fd3e30b47dcfa66a4e121a56bf87d823003b94a7e3c94a82.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5450206899b217c114da97d7bdc0abef5bb173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
