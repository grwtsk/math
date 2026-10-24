# myMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bcf8d7dfed1c19dbbddadda1f27c699eb812638f858a5eda59008a7d0b6dca7",
  "kind": "def",
  "lexical_name": "myMul",
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
  "slug": "mymul--1130f6ad1aaef5b1d29bf255",
  "source": {
    "blob": "6f3bf1be316a2ff1e99a6172560489dfa739fbb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 629,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1130f6ad1aaef5b1d29bf255444d70b83bcf61797d16bea007b94ac3bf056f1e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bcf8d7dfed1c19dbbddadda1f27c699eb812638f858a5eda59008a7d0b6dca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def myMul {α : Type} [i : Mul α] (a : α) := unfold% i.1 a

/--
info: def myMul : {α : Type} → [i : Mul α] → α → α → α :=
fun {α} [i : Mul α] a => i.1 a
-/
#guard_msgs in
#print myMul
/--
info: def myAdd : {α : Type} → [i : Add α] → α → α → α :=
fun {α} [Add α] a => Add.add a
-/
#guard_msgs in
#print myAdd

/-! Test that the `existingAttributeWarning` linter doesn't fire for `to_additive self`. -/
/--
warning: `to_additive self` is redundant when none of the arguments are reordered.
Please remove the attribute, or provide an explicit `(reorder := ...)` argument.
If you need to give a hint to `to_additive` to translate expressions involving `test1`,
use `to_additive_do_translate` instead

Note: This linter can be disabled with `set_option linter.translateRedundant false`
-/
#guard_msgs in
@[simp, to_additive self]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f3bf1be316a2ff1e99a6172560489dfa739fbb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
