# let_body_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8851b0f-8628-220d-aeeb-ee7e77c4345a",
  "kind": "theorem",
  "lexical_name": "let_body_congr",
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
  "slug": "let-body-congr--c0ec3da9346e913020d3be85",
  "source": {
    "blob": "7bf50f38bfef46d874215e761cf71bcc2c6af28e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantc3aa84ccb43c7fa1522cc2f05f4ed1957c45dedcf6f2ebd92ef2fe886c1c9724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0ec3da9346e913020d3be85ee770cccdd103c201b556078b4d32de42347e46c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantc3aa84ccb43c7fa1522cc2f05f4ed1957c45dedcf6f2ebd92ef2fe886c1c9724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8851b0f-8628-220d-aeeb-ee7e77c4345a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem let_body_congr {α : Sort u} {β : α → Sort v} {b b' : (a : α) → β a}
    (a : α) (h : ∀ x, b x = b' x) : (let x := a; b x) = (let x := a; b' x) :=
  (funext h : b = b') ▸ rfl

/-!
Congruence lemmas for `have` have kernel performance issues when stated using `have` directly.
Illustration of the problem: the kernel infers that the type of
`have_congr (fun x => b) (fun x => b') h₁ h₂`
is
`(have x := a; (fun x => b) x) = (have x := a'; (fun x => b') x)`
rather than
`(have x := a; b x) = (have x := a'; b' x)`
That means the kernel will do `whnf_core` at every step of checking a sequence of these lemmas.
Thus, we get quadratically many zeta reductions.

For reference, we have the `have` versions of the theorems in the following comment,
and then after that we have the versions that `simpHaveTelescope` actually uses,
which avoid this issue.
-/
/-
theorem have_unused {α : Sort u} {β : Sort v} (a : α) {b b' : β}
    (h : b = b') : (have _ := a; b) = b' := h

theorem have_unused_dep {α : Sort u} {β : Sort v} (a : α) {b : α → β} {b' : β}
    (h : ∀ x, b x = b') : (have x := a; b x) = b' := h a

theorem have_congr {α : Sort u} {β : Sort v} {a a' : α} {f f' : α → β}
    (h₁ : a = a') (h₂ : ∀ x, f x = f' x) : (have x := a; f x) = (have x := a'; f' x) :=
  @congr α β f f' a a' (funext h₂) h₁

theorem have_val_congr {α : Sort u} {β : Sort v} {a a' : α} {f : α → β}
    (h : a = a') : (have x := a; f x) = (have x := a'; f x) :=
  @congrArg α β a a' f h

theorem have_body_congr_dep {α : Sort u} {β : α → Sort v} (a : α) {f f' : (x : α) → β x}
    (h : ∀ x, f x = f' x) : (have x := a; f x) = (have x := a; f' x) :=
  h a

theorem have_body_congr {α : Sort u} {β : Sort v} (a : α) {f f' : α → β}
    (h : ∀ x, f x = f' x) : (have x := a; f x) = (have x := a; f' x) :=
  h a
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantc3aa84ccb43c7fa1522cc2f05f4ed1957c45dedcf6f2ebd92ef2fe886c1c9724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variantc3aa84ccb43c7fa1522cc2f05f4ed1957c45dedcf6f2ebd92ef2fe886c1c9724.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bf50f38bfef46d874215e761cf71bcc2c6af28e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
