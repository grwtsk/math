# Estimator.fstInst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c867dfc3e9d990ea7a28f7bbb1d8d40ce30ad612d758ea9d41ee364221d34fc3",
  "kind": "def",
  "lexical_name": "Estimator.fstInst",
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
  "slug": "estimator-fstinst--8033d90fd5ebd50057ed1dc7",
  "source": {
    "blob": "a0bec0058611c66f299e89e63f4cbe4babf3f1d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8033d90fd5ebd50057ed1dc733945a6e8fccb278f06fae604999fd627924a25c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c867dfc3e9d990ea7a28f7bbb1d8d40ce30ad612d758ea9d41ee364221d34fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Estimator.fstInst [DecidableLT α] [∀ (p : α × β), WellFoundedGT { q // q ≤ p }]
    (a : Thunk α) (b : Thunk β) (i : Estimator (a.prod b) ε) :
    Estimator a (Estimator.fst (a.prod b) ε) where
  bound_le e := (Estimator.bound_le e.inner : bound (a.prod b) e.inner ≤ (a.get, b.get)).1
  improve_spec e := by
    let bd := (bound (a.prod b) e.inner).1
    have := Estimator.improveUntil_spec (a.prod b) (fun p => bd < p.1) e.inner
    revert this
    simp only [EstimatorData.improve, decide_eq_true_eq]
    match Estimator.improveUntil (a.prod b) _ _ with
    | .error _ =>
      simp only [Option.map_none]
      exact fun w =>
        eq_of_le_of_not_lt
          (Estimator.bound_le e.inner : bound (a.prod b) e.inner ≤ (a.get, b.get)).1 w
    | .ok e' => exact fun w => w

end fst
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Estimator/Variantbc343961b96a5286481d96dd9d0ce0eda731aff4c013c98fecc1d13ae18c489f.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0bec0058611c66f299e89e63f4cbe4babf3f1d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
