# construct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:184499e8bbd1e959d957775c43c4642dedd9ee343045adfaeafd35791ec11a30",
  "kind": "def",
  "lexical_name": "construct",
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
  "slug": "construct--152aab4ebd664d2ee3388eb7",
  "source": {
    "blob": "dfec90abc7dc25e9f31414d8de4ba4e00584ea45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:152aab4ebd664d2ee3388eb77ec00852807ac66b9e8fe1ee6d2e84d20a9e5f66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:184499e8bbd1e959d957775c43c4642dedd9ee343045adfaeafd35791ec11a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def construct {goal : Q(Prop)} (exs : List VarQ) (path : Path) (leaves : List HypQ) :
    MetaM Q($goal) := do
  match path with
  | [] =>
    let ~q($x = $y) := goal | panic! "path is empty, but the goal is not an equation"
    let _ : $x =Q $y := ⟨⟩
    return q(rfl)
  | .existsBody :: tl =>
    match exs with
    | [] => panic! "path starts with `existsBody`, but `exs` is empty"
    | ⟨v, γ, e⟩ :: exsTl =>
    let ~q(@Exists.{v} $β $pb) := goal
      | panic! "path starts with `existsBody`, but the goal is not `Exists`"
    let _ : $γ =Q $β := ⟨⟩
    let pf : Q($pb $e) ← construct exsTl tl leaves
    return q(Exists.intro $e $pf)
  | .andRight :: tl =>
    let ~q($L ∧ $R) := goal
      | panic! "path starts with `andRight`, but the goal is not a conjunction"
    match leaves with
    | [] => panic! "path starts with `andRight`, but `leaves` is empty"
    | ⟨T, leaf⟩ :: leavesTl =>
    let _ : $T =Q $L := ⟨⟩
    have leaf : Q($L) := leaf
    let pf : Q($R) ← construct exs tl leavesTl
    return q(And.intro $leaf $pf)
  | .andLeft :: tl =>
    let ~q($L ∧ $R) := goal
      | panic! "path starts with `andLeft`, but the goal is not a conjunction"
    match leaves with
    | [] => panic! "path starts with `andLeft`, but `leaves` is empty"
    | ⟨T, leaf⟩ :: leavesTl =>
    let _ : $T =Q $R := ⟨⟩
    have leaf : Q($R) := leaf
    let pf : Q($L) ← construct exs tl leavesTl
    return q(And.intro $pf $leaf)
  | .existsType :: _ => panic! "not implemented"

/-- Generates a proof of `(∃ a, p a) → P'`. We assume that `fvars = [f₁, ..., fₙ]` are free
variables and `P' = ∃ f₁ ... fₙ, newBody`, and `path` leads to `a = a'` in `∃ a, p a`.

The proof follows the following structure:
```
example (f : β → α) {P Q : β → Prop} :
    (∃ x b, P b ∧ (∃ c, f c = x ∧ Q c) ∧ Q b) → ∃ b c, P b ∧ (f c = f c ∧ Q c) ∧ Q b := by
  -- path : existsBody, andRight, andLeft, existsBody, andLeft
  intro ⟨x, h₁⟩
  -- destruct the input following the path:
  -- obtain ⟨e1, a1, ⟨e2, h_eq, a3⟩, a2⟩ := h₁
  refine
    h₁.elim fun e1 h₂ ↦           -- existsBody
    h₂.elim fun a1 h₃ ↦           -- andRight
    h₃.elim fun h₄ a2 ↦           -- andLeft
    h₄.elim fun e2 h₅ ↦           -- existsBody
    h₅.elim fun h_eq a3 ↦ ?_      -- andLeft
  -- subst the equation (`substCore`)
  subst h_eq
  -- construct the output following the path of the result (with all existsBody moved left):
  -- existsBody, existsBody, andRight, andLeft, andLeft
  -- exact ⟨e1, e2, a1, ⟨rfl, a3⟩, a2⟩
  refine Exists.intro e1 ?_       -- existsBody
  refine Exists.intro e2 ?_       -- existsBody
  refine And.intro a1 ?_          -- andRight
  refine And.intro ?_ a2          -- andLeft
  refine And.intro ?_ a3          -- andLeft
  exact rfl
``` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant8dfec98dbcd2fec5ade0041b1f3a462b125f5fc71925d1c753225f06ed87b5c2.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfec90abc7dc25e9f31414d8de4ba4e00584ea45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
