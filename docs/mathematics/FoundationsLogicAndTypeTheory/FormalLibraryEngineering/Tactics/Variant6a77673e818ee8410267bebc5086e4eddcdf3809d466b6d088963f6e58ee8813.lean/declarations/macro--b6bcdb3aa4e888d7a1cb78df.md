# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da76a6a1aea5bfba102f0d47571cb73b40fa1cfcc6d0b76efa36744cf8ecaf53",
  "kind": "macro",
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
  "slug": "macro--b6bcdb3aa4e888d7a1cb78df",
  "source": {
    "blob": "2cf74f441f09be38b6ccdbb0f9a93688d8a2e2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2210,
    "line": 2188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6bcdb3aa4e888d7a1cb78df49bc65c5fddd5adb6ae0bedbe743d180d900751c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da76a6a1aea5bfba102f0d47571cb73b40fa1cfcc6d0b76efa36744cf8ecaf53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2188–2210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := mleaveMacro) (priority:=low) "mleave" : tactic =>
  Macro.throwError "to use `mleave`, please include `import Std.Tactic.Do`"


/--
Like `rcases`, but operating on stateful `Std.Do.SPred` goals.
Example: Given a goal `h : (P ∧ (Q ∨ R) ∧ (Q → R)) ⊢ₛ R`,
`mcases h with ⟨-, ⟨hq | hr⟩, hqr⟩` will yield two goals:
`(hq : Q, hqr : Q → R) ⊢ₛ R` and `(hr : R) ⊢ₛ R`.

That is, `mcases h with pat` has the following semantics, based on `pat`:
* `pat=□h'` renames `h` to `h'` in the stateful context, regardless of whether `h` is pure
* `pat=⌜h'⌝` introduces `h' : φ`  to the pure local context if `h : ⌜φ⌝`
  (c.f. `Lean.Elab.Tactic.Do.ProofMode.IsPure`)
* `pat=h'` is like `pat=⌜h'⌝` if `h` is pure
  (c.f. `Lean.Elab.Tactic.Do.ProofMode.IsPure`), otherwise it is like `pat=□h'`.
* `pat=_` renames `h` to an inaccessible name
* `pat=-` discards `h`
* `⟨pat₁, pat₂⟩` matches on conjunctions and existential quantifiers and recurses via
  `pat₁` and `pat₂`.
* `⟨pat₁ | pat₂⟩` matches on disjunctions, matching the left alternative via `pat₁` and the right
  alternative via `pat₂`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant6a77673e818ee8410267bebc5086e4eddcdf3809d466b6d088963f6e58ee8813.lean#L2188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf74f441f09be38b6ccdbb0f9a93688d8a2e2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
