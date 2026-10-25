# tfaeHaveDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54c079761b6352c5242c4d0cfcca7e4bc73550d2f27abcaabfdfc91c4305fcbb",
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
  "slug": "tfaehavedecl--e97411fe10568ce5d954c45c",
  "source": {
    "blob": "9af60ef447325987c48e54a415d187f5ba1a661d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e97411fe10568ce5d954c45cbb42e8230294f805701f4613a4dd363cf330d6de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54c079761b6352c5242c4d0cfcca7e4bc73550d2f27abcaabfdfc91c4305fcbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def tfaeHaveDecl     := leading_parser (withAnonymousAntiquot := false)
  tfaeHaveIdDecl <|> (ppSpace >> tfaeHavePatDecl) <|> tfaeHaveEqnsDecl

end Parser

open Parser

/--
`tfae_have` introduces hypotheses for proving goals of the form `TFAE [P₁, P₂, ...]`. Specifically,
`tfae_have i <arrow> j := ...` introduces a hypothesis of type `Pᵢ <arrow> Pⱼ` to the local
context, where `<arrow>` can be `→`, `←`, or `↔`. Note that `i` and `j` are natural number indices
(beginning at 1) used to specify the propositions `P₁, P₂, ...` that appear in the goal.

```lean4
example (h : P → R) : TFAE [P, Q, R] := by
  tfae_have 1 → 3 := h
  ...
```
The resulting context now includes `tfae_1_to_3 : P → R`.

Once sufficient hypotheses have been introduced by `tfae_have`, `tfae_finish` can be used to close
the goal. For example,

```lean4
example : TFAE [P, Q, R] := by
  tfae_have 1 → 2 := sorry /- proof of P → Q -/
  tfae_have 2 → 1 := sorry /- proof of Q → P -/
  tfae_have 2 ↔ 3 := sorry /- proof of Q ↔ R -/
  tfae_finish
```

All features of `have` are supported by `tfae_have`, including naming, matching,
destructuring, and goal creation. These are demonstrated below.

```lean4
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
  ...
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af60ef447325987c48e54a415d187f5ba1a661d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
