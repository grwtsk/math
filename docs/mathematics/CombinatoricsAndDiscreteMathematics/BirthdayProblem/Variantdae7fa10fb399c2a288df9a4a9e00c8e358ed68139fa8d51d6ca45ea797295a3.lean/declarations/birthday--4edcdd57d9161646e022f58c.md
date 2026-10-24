# birthday

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c3224823ebb2c1295a5106341c93d06132d85a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358e190b-17f1-4802-ea2a-840c5b82ddff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c85c6ce5-d33e-d703-326d-cf5012bdcd70",
  "kind": "theorem",
  "lexical_name": "birthday",
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
  "slug": "birthday--4edcdd57d9161646e022f58c",
  "source": {
    "blob": "4c3224823ebb2c1295a5106341c93d06132d85a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4edcdd57d9161646e022f58c37a6135804166a3d89d98476b73a5428ec062c22",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c85c6ce5-d33e-d703-326d-cf5012bdcd70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem birthday :
    2 * ‖Fin 23 ↪ Fin 365‖ < ‖Fin 23 → Fin 365‖ ∧ 2 * ‖Fin 22 ↪ Fin 365‖ > ‖Fin 22 → Fin 365‖ := by
  simp only [Nat.descFactorial, Fintype.card_fin, Fintype.card_embedding_eq, Fintype.card_fun]
#align theorems_100.birthday Theorems100.birthday

section MeasureTheory

open MeasureTheory ProbabilityTheory

open scoped ProbabilityTheory ENNReal

variable {n m : ℕ}

/- In order for Lean to understand that we can take probabilities in `Fin 23 → Fin 365`, we must
tell Lean that there is a `MeasurableSpace` structure on the space. Note that this instance
is only for `Fin m` - Lean automatically figures out that the function space `Fin n → Fin m`
is _also_ measurable, by using `MeasurableSpace.pi`, and furthermore that all sets are measurable,
from `MeasurableSingletonClass.pi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantdae7fa10fb399c2a288df9a4a9e00c8e358ed68139fa8d51d6ca45ea797295a3.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3224823ebb2c1295a5106341c93d06132d85a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
