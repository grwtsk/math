# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a9134d046a753822304309459b00f61cbfe51a680780885727f02260662495e",
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
  "slug": "macro--1fa8d9da9b3941bba83a6021",
  "source": {
    "blob": "7351c5251d9fa65fa3f75145b8d6367065f8b2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fa8d9da9b3941bba83a60217cb937468dc9e3e115bdc5c1bc5dfb7e80a269c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a9134d046a753822304309459b00f61cbfe51a680780885727f02260662495e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
macro \"push_neg\" cfg:optConfig loc:(location)? : tactic =>
  `(tactic| push $cfg:optConfig Not $[$loc]?)
```
"
  let loc := (loc.map expandLocation).getD (.targets #[] true)
  push (← elabPushConfig cfg) none (.const ``Not) loc

/--
`pull c` rewrites the goal by pulling the constant `c` closer to the head of the expression.
For instance, `pull _ ∈ _` rewrites `x ∈ y ∨ ¬ x ∈ z` into `x ∈ y ∪ zᶜ`.
More precisely, the `pull` tactic repeatedly rewrites an expression by applying lemmas
of the form `... (c ...) = c ...` (where `c` can appear 1 or more times on the left hand side).
`pull` is the inverse tactic to `push`. To extend the `pull` tactic, you can tag a lemma
with the `@[push]` attribute. `pull` works as both a tactic and a conv tactic.

A lemma is considered a `pull` lemma if its reverse direction is a `push` lemma
that actually moves the given constant away from the head. For example
- `not_or : ¬ (p ∨ q) ↔ ¬ p ∧ ¬ q` is a `pull` lemma, but `not_not : ¬ ¬ p ↔ p` is not.
- `log_mul : log (x * y) = log x + log y` is a `pull` lemma, but `log_abs : log |x| = log x` is not.
- `Pi.mul_def : f * g = fun (i : ι) => f i * g i` and `Pi.one_def : 1 = fun (x : ι) => 1` are both
  `pull` lemmas for `fun`, because every `push fun _ ↦ _` lemma is also considered a `pull` lemma.

TODO: define a `@[pull]` attribute for tagging `pull` lemmas that are not `push` lemmas.

* `pull _ ~ _` pulls the operator or relation `~`.
* `pull c at l1 l2 ...` rewrites at the given locations.
* `pull c at *` rewrites at all hypotheses and the goal.
* `pull (disch := tac) c` uses the tactic `tac` to discharge any hypotheses for `@[push]` lemmas.

Examples:
* `pull _ ∈ _` rewrites `x ∈ y ∨ ¬ x ∈ z` into `x ∈ y ∪ zᶜ`.
* `pull (disch := positivity) Real.log` rewrites `log a + 2 * log b` into `log (a * b ^ 2)`.
* `pull fun _ ↦ _` rewrites `f ^ 2 + 5` into `fun x => f x ^ 2 + 5` where `f` is a function.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Variant697e3a233e245e2642a7dff36f60baf4fc55df2e43dd6ef188f227ae46e46ba2.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7351c5251d9fa65fa3f75145b8d6367065f8b2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
