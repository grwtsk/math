# reduce.not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad2a13c-d817-e8c0-aa4c-1b2a78d8ffed",
  "kind": "theorem",
  "lexical_name": "reduce.not",
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
  "slug": "reduce-not--dcd6687dcf43a2678368a072",
  "source": {
    "blob": "46b4ad44d965aca62a32c9060981cf60feb8e947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcd6687dcf43a2678368a0723e0c1d007655bd375bdb3d0004c25ed5a7e1d000",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad2a13c-d817-e8c0-aa4c-1b2a78d8ffed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce.not {p : Prop} :
    ∀ {L₁ L₂ L₃ : List (α × Bool)} {x b}, reduce L₁ = L₂ ++ (x, b) :: (x, !b) :: L₃ → p
  | [], L2, L3, _, _ => fun h => by cases L2 <;> injections
  | (x, b) :: L1, L2, L3, x', b' => by
    dsimp
    cases r : reduce L1 with
    | nil =>
      dsimp; intro h
      exfalso
      have := congr_arg List.length h
      grind
    | cons hd tail =>
      obtain ⟨y, c⟩ := hd
      dsimp only
      split_ifs with h <;> intro H
      · rw [H] at r
        exact @reduce.not _ L1 ((y, c) :: L2) L3 x' b' r
      rcases L2 with (_ | ⟨a, L2⟩)
      · injections; subst_vars
        simp at h
      · refine @reduce.not _ L1 L2 L3 x' b' ?_
        rw [List.cons_append] at H
        injection H with _ H
        rw [r, H]

/-- The second theorem that characterises the function `reduce`: the maximal reduction of a word
only reduces to itself. -/
@[to_additive /-- The second theorem that characterises the function `reduce`: the maximal
  reduction of a word only reduces to itself. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46b4ad44d965aca62a32c9060981cf60feb8e947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
