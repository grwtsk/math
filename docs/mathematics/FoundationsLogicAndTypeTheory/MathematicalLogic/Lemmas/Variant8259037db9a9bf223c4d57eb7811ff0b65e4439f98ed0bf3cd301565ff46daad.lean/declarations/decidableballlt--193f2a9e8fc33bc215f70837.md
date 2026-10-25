# decidableBallLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2be118584b4bee60297da5da15455d6ea7bc2215198a90337ad2428798ef187",
  "kind": "instance",
  "lexical_name": "decidableBallLT",
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
  "slug": "decidableballlt--193f2a9e8fc33bc215f70837",
  "source": {
    "blob": "6770eae442be8d7119e8fdc770727d87291da0eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1797,
    "line": 1770,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193f2a9e8fc33bc215f70837d9fe38f1ced3defd2b6d445b0418d70e1dc457a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2be118584b4bee60297da5da15455d6ea7bc2215198a90337ad2428798ef187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1770–1797.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance decidableBallLT :
  ∀ (n : Nat) (P : ∀ k, k < n → Prop) [∀ n h, Decidable (P n h)], Decidable (∀ n h, P n h)
| 0, _, _ => isTrue fun _ => (by cases ·)
| n + 1, P, H =>
  match decidableBallLT n (P · <| lt_succ_of_lt ·) with
  | isFalse h => isFalse (h fun _ _ => · _ _)
  | isTrue h =>
    match H n Nat.le.refl with
    | isFalse p => isFalse (p <| · _ _)
    | isTrue p => isTrue fun _ h' => (Nat.lt_succ_iff_lt_or_eq.1 h').elim (h _) fun hn => hn ▸ p

/-! ### Tail-recursive runtime replacements for the bounded-quantifier decision procedures

`decidableBallLT`, `decidableExistsLT`, and `decidableExistsLT'` recurse to depth `n` in non-tail
position, so *running* the compiled instance is either quadratic (`decidableBallLT` rebuilds the
predicate at every level) or overflows the stack for large `n`. Each is replaced at runtime by a
proven-equivalent tail-recursive version via `@[csimp]`; kernel reduction (`by decide`) is
unaffected, as it uses the original structural definitions.

The roots are marked `noncomputable` so the non-tail-recursive code is never compiled at all, and
each `@[csimp]` replacement is registered immediately after its root and *before* the `Fin`/`≤`
wrappers (`decidableForallFin`, `decidableExistsFin`, `decidableBall/ExistsLE`, …). The wrappers
reduce to these roots through `@[inline] decidable_of_iff`, so they pick up the tail-recursive
versions; and because the roots are `noncomputable`, a wrapper placed before its replacement fails
to compile rather than silently regressing. -/

/-- Tail-recursive `Bool` loop: `true` iff `f i h` holds for every `i < n`
(short-circuits on the first `false`). Used at runtime by `decidableBallLT` via `@[csimp]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8259037db9a9bf223c4d57eb7811ff0b65e4439f98ed0bf3cd301565ff46daad.lean#L1770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6770eae442be8d7119e8fdc770727d87291da0eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
