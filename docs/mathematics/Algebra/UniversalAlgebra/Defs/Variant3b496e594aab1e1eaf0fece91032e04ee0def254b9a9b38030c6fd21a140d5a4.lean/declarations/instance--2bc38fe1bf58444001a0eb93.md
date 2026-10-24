# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a696ce4adcc699b1ac6c6d3bdfb445ddec1611724de54fc32337ba425d76cccf",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2bc38fe1bf58444001a0eb93",
  "source": {
    "blob": "be33ba6913869996acdb845ca35515f87b439e73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 979,
    "line": 969,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bc38fe1bf58444001a0eb93a632857a2686b18c4bc2c406c2228fbc235f24d7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a696ce4adcc699b1ac6c6d3bdfb445ddec1611724de54fc32337ba425d76cccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–979.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe instance : Repr ℝ≥0 where
  reprPrec r _ := f!"({repr r.val}).toNNReal"

namespace Mathlib.Meta.Positivity

open Lean Meta Qq Function

private alias ⟨_, nnreal_coe_pos⟩ := coe_pos

/-- Extension for the `positivity` tactic: cast from `ℝ≥0` to `ℝ`. -/
@[positivity NNReal.toReal _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be33ba6913869996acdb845ca35515f87b439e73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
