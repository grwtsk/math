# tfaeHaveDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fea0187a492c627ee825e07f7f0baf2dd979b6f4cb7cb822a2b6af892783656b",
  "kind": "def",
  "lexical_name": "tfaeHaveDecl",
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
  "slug": "tfaehavedecl--3b81ad4bde51db8104e40507",
  "source": {
    "blob": "f795d1b2b4505dc6ff086fa3d8255955ede0ff2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b81ad4bde51db8104e40507441179c8bc357c187e795287243c0a24af0e91e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fea0187a492c627ee825e07f7f0baf2dd979b6f4cb7cb822a2b6af892783656b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def tfaeHaveDecl := leading_parser (withAnonymousAntiquot := false)
  tfaeHaveIdDecl <|> (ppSpace >> tfaeHavePatDecl) <|> tfaeHaveEqnsDecl

-- Don't put doc-strings on these parsers in order to not override hover doc-strings.
attribute [nolint docBlame] binder
  tfaeHaveIdLhs tfaeHaveIdDecl tfaeHaveEqnsDecl tfaeHavePatDecl tfaeHaveDecl

end Parser

open TFAE.Parser

/--
`tfae_have i → j := t`, where the goal is `TFAE [P₁, P₂, ...]` introduces a hypothesis
`tfae_i_to_j : Pᵢ → Pⱼ` and proof `t` to the local context. Note that `i` and `j` are
natural number literals (beginning at 1) used as indices to specify the propositions
`P₁, P₂, ...` that appear in the goal.

Once sufficient hypotheses have been introduced by `tfae_have`, `tfae_finish` can be used to close
the goal.

All features of `have` are supported by `tfae_have`, including naming, matching,
destructuring, and goal creation.

* `tfae_have i ← j := t` adds a hypothesis in the reverse direction, of type `Pⱼ → Pᵢ`.
* `tfae_have i ↔ j := t` adds a hypothesis in the both directions, of type `Pᵢ ↔ Pⱼ`.
* `tfae_have hij : i → j := t` names the introduced hypothesis `hij` instead of `tfae_i_to_j`.
* `tfae_have i j | p₁ => t₁ | ...` matches on the assumption `p : Pᵢ`.
* `tfae_have ⟨hij, hji⟩ : i ↔ j := t` destructures the bi-implication into `hij : Pᵢ → Pⱼ`
  and `hji : Pⱼ → Pⱼ`.
* `tfae_have i → j := t ?a` creates a new goal for `?a`.

Examples:
```lean4
example (h : P → R) : TFAE [P, Q, R] := by
  tfae_have 1 → 3 := h
  -- The resulting context now includes `tfae_1_to_3 : P → R`.
  sorry
```

```lean4
-- An example of `tfae_have` and `tfae_finish`:
example : TFAE [P, Q, R] := by
  tfae_have 1 → 2 := sorry /- proof of P → Q -/
  tfae_have 2 → 1 := sorry /- proof of Q → P -/
  tfae_have 2 ↔ 3 := sorry /- proof of Q ↔ R -/
  tfae_finish
```

```lean4
-- All features of `have` are supported by `tfae_have`:
example : TFAE [P, Q] := by
  -- assert `tfae_1_to_2 : P → Q`:
  tfae_have 1 → 2 := sorry

  -- assert `hpq : P → Q`:
  tfae_have hpq : 1 → 2 := sorry

  -- match on `p : P` and prove `Q` via `f p`:
  tfae_have 1 → 2
  | p => f p

  -- assert `pq : P → Q`, `qp : Q → P`:
  tfae_have ⟨pq, qp⟩ : 1 ↔ 2 := sorry

  -- assert `h : P → Q`; `?a` is a new goal:
  tfae_have h : 1 → 2 := f ?a

  sorry
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant47a488e17a32c1e190928f5b5522437bbf5ed5078e057fcfb9bf5eeb9ce437c2.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f795d1b2b4505dc6ff086fa3d8255955ede0ff2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
