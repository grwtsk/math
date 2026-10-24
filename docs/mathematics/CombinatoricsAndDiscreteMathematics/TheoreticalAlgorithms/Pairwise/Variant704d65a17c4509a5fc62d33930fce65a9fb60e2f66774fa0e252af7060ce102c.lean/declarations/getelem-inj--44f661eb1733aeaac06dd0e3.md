# getElem?_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96c46f0e-4811-8f35-54f1-35f9f1715e98",
  "kind": "theorem",
  "lexical_name": "getElem?_inj",
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
  "slug": "getelem-inj--44f661eb1733aeaac06dd0e3",
  "source": {
    "blob": "3610292b5ee3b4496e236e6209cda357f8f58ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 315,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f661eb1733aeaac06dd0e3f7f7bac80f8c6eb312fa86f58c9bf36c089d8ebc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c46f0e-4811-8f35-54f1-35f9f1715e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem?_inj {l : List α} (h₀ : i < l.length) (h₁ : List.Nodup l) :
    l[i]? = l[j]? ↔ i = j :=
  ⟨by
    intro h₂
    induction l generalizing i j with
    | nil => cases h₀
    | cons x xs ih =>
      match i, j with
      | 0, 0 => rfl
      | i+1, j+1 =>
        cases h₁ with
        | cons ha h₁ =>
          simp only [getElem?_cons_succ] at h₂
          exact congrArg (· + 1) (ih (Nat.lt_of_succ_lt_succ h₀) h₁ h₂)
      | i+1, 0 => ?_
      | 0, j+1 => ?_
      all_goals
        simp only [getElem?_cons_zero, getElem?_cons_succ] at h₂
        cases h₁; rename_i h' h
        have := h x ?_ rfl; cases this
        rw [mem_iff_getElem?]
      exact ⟨_, h₂⟩; exact ⟨_ , h₂.symm⟩
      , by simp +contextual⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant704d65a17c4509a5fc62d33930fce65a9fb60e2f66774fa0e252af7060ce102c.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3610292b5ee3b4496e236e6209cda357f8f58ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
