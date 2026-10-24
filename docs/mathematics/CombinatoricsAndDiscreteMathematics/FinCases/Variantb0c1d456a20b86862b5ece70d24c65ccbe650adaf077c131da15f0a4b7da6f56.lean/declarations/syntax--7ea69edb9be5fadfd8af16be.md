# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c1e660bc31d1721442a4acf38759b8ea0eeb92a1dd2464ce22d5b8902baa9eb",
  "kind": "syntax",
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
  "slug": "syntax--7ea69edb9be5fadfd8af16be",
  "source": {
    "blob": "0fb313ef81e297f57d79e978b499a9f3a7b66706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ea69edb9be5fadfd8af16be0f04b55bce916c70afaf8c223bbf7c21eb761cca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c1e660bc31d1721442a4acf38759b8ea0eeb92a1dd2464ce22d5b8902baa9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax (name := finCases) "fin_cases " ("*" <|> term,+) (" with " term,+)? : tactic

/-!
`fin_cases` used to also have two modifiers, `fin_cases ... with ...` and `fin_cases ... using ...`.
With neither actually used in mathlib, they haven't been re-implemented here.

In case someone finds a need for them, and wants to re-implement, the relevant sections of
the doc-string are preserved here:

---

`fin_cases h with l` takes a list of descriptions for the cases of `h`.
These should be definitionally equal to and in the same order as the
default enumeration of the cases.

For example,
```
example (x y : ℕ) (h : x ∈ [1, 2]) : x = y := by
  fin_cases h with 1, 1+1
```
produces two cases: `1 = y` and `1 + 1 = y`.

When using `fin_cases a` on data `a` defined with `let`,
the tactic will not be able to clear the variable `a`,
and will instead produce hypotheses `this : a = ...`.
These hypotheses can be given a name using `fin_cases a using ha`.

For example,
```
example (f : ℕ → Fin 3) : True := by
  let a := f 3
  fin_cases a using ha
```
produces three goals with hypotheses
`ha : a = 0`, `ha : a = 1`, and `ha : a = 2`.
-/

/- TODO: In mathlib3 we ran `norm_num` when there is no `with` clause. Is this still useful? -/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb313ef81e297f57d79e978b499a9f3a7b66706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
