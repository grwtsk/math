# subsingleton_short_example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0145b366-462d-7b5a-968d-3fccaaee3cf7",
  "kind": "theorem",
  "lexical_name": "subsingleton_short_example",
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
  "slug": "subsingleton-short-example--04a97202e6da38f5c268b848",
  "source": {
    "blob": "dd1d420166f8d98166edcd38041f6b6c8cd17f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04a97202e6da38f5c268b848e3ec3e76055183656149f4080881068d39421b29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0145b366-462d-7b5a-968d-3fccaaee3cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_short_example : ∀ x : PGame, Subsingleton (Short x)
  | mk xl xr xL xR =>
    ⟨fun a b => by
      cases a; cases b
      congr!
      · funext x
        apply @Subsingleton.elim _ (subsingleton_short_example (xL x))
        -- Decreasing goal in Lean 4 is `Subsequent (xL x) (mk α β L R)`
        -- where `α`, `β`, `L`, and `R` are fresh hypotheses only propositionally
        -- equal to `xl`, `xr`, `xL`, and `xR`.
        -- (In Lean 3 it was `(mk xl xr xL xR)` instead.)
      · funext x
        apply @Subsingleton.elim _ (subsingleton_short_example (xR x))⟩
termination_by subsingleton_short_example x => x
-- We need to unify a bunch of hypotheses before `pgame_wf_tac` can work.
decreasing_by {
  subst_vars
  simp only [mk.injEq, heq_eq_eq, true_and] at *
  casesm* _ ∧ _
  subst_vars
  pgame_wf_tac
}

#align pgame.subsingleton_short SetTheory.PGame.subsingleton_short

/-- A synonym for `Short.mk` that specifies the pgame in an implicit argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Short/Variant974dc4221eb0107145a693297d4ac66950d3922d771a843708e03107844af2aa.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd1d420166f8d98166edcd38041f6b6c8cd17f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
