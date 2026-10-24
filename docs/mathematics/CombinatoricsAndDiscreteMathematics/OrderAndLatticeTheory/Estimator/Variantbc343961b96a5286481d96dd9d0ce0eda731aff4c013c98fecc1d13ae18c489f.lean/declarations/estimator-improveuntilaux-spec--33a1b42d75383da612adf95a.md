# Estimator.improveUntilAux_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec6f634f-e2d1-a6c3-80fa-0586189b2b77",
  "kind": "theorem",
  "lexical_name": "Estimator.improveUntilAux_spec",
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
  "slug": "estimator-improveuntilaux-spec--33a1b42d75383da612adf95a",
  "source": {
    "blob": "a0bec0058611c66f299e89e63f4cbe4babf3f1d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33a1b42d75383da612adf95abc49a4832a610b1a0fb038c7c04d1c433ae02421",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec6f634f-e2d1-a6c3-80fa-0586189b2b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Estimator.improveUntilAux_spec (a : Thunk α) (p : α → Bool)
    [Estimator a ε] [WellFoundedGT (range (bound a : ε → α))] (e : ε) (r : Bool) :
    match Estimator.improveUntilAux a p e r with
    | .error _ => ¬ p a.get
    | .ok e' => p (bound a e') := by
  rw [Estimator.improveUntilAux]
  by_cases h : p (bound a e)
  · simp only [h]; exact h
  · simp only [h]
    match improve a e, improve_spec e with
    | none, eq =>
      simp only [Bool.not_eq_true]
      rw [eq] at h
      exact Bool.bool_eq_false h
    | some e', _ =>
      exact Estimator.improveUntilAux_spec a p e' true
termination_by (⟨_, mem_range_self e⟩ : range (bound a))

/--
If `Estimator.improveUntil a p e` returns `some e'`, then `bound a e'` satisfies `p`.
Otherwise, that value `a` must not satisfy `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0bec0058611c66f299e89e63f4cbe4babf3f1d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
