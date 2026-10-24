# sum_subgroup_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c40fd1d-2196-eae0-67f7-05d6ad7e25c8",
  "kind": "theorem",
  "lexical_name": "sum_subgroup_units",
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
  "slug": "sum-subgroup-units--205b967dfc8de139ad516e09",
  "source": {
    "blob": "719e419a79cc536ca864c3bf1e92572c473e8e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:205b967dfc8de139ad516e0977521bfd2e8c4a8bfa9c43667381437f49675258",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c40fd1d-2196-eae0-67f7-05d6ad7e25c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_subgroup_units [Ring K] [NoZeroDivisors K]
    {G : Subgroup Kˣ} [Fintype G] [Decidable (G = ⊥)] :
    ∑ x : G, (x.val : K) = if G = ⊥ then 1 else 0 := by
  by_cases G_bot : G = ⊥
  · subst G_bot
    simp only [univ_unique, sum_singleton, ↓reduceIte, Units.val_eq_one, OneMemClass.coe_eq_one]
    rw [Set.default_coe_singleton]
    rfl
  · simp only [G_bot, ite_false]
    exact sum_subgroup_units_eq_zero G_bot

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7b86651406816f1e8b3bf7a579c1f67a3e78203eec02f805855e6c4b7a3acf86.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719e419a79cc536ca864c3bf1e92572c473e8e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
