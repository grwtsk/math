# decEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4321e410bcc4f1fe34d2c466d6eab24d202f1aa9e7e889d070c753928366d6c9",
  "kind": "instance",
  "lexical_name": "decEq",
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
  "slug": "deceq--e381e6b3ea10de256e50bba5",
  "source": {
    "blob": "5e663fea736a59d0a61b9fa00c040eea6e4e0202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e381e6b3ea10de256e50bba594c69ceee653b96a62515ca30bd7f7b76f4a99be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4321e410bcc4f1fe34d2c466d6eab24d202f1aa9e7e889d070c753928366d6c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decEq : DecidableEq (BVExpr w) := fun l r =>
  withPtrEqDecEq l r fun _ =>
    if h : hash l ≠ hash r then
      .isFalse (ne_of_apply_ne hash h)
    else
      match l with
      | .var lidx =>
        match r with
        | .var ridx =>
          if h : lidx = ridx then .isTrue (by simp [h]) else .isFalse (by simp [h])
        | .const .. | .extract .. | .bin .. | .un .. | .append .. | .replicate .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .const lval =>
        match r with
        | .const rval =>
          if h : lval = rval then .isTrue (by simp [h]) else .isFalse (by simp [h])
        | .var .. | .extract .. | .bin .. | .un .. | .append .. | .replicate .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .extract (w := lw) lstart _ lexpr =>
        match r with
        | .extract (w := rw) rstart _ rexpr  =>
          if h1 : lw = rw ∧ lstart = rstart then
            match decEq (h1.left ▸ lexpr) rexpr with
            | .isTrue h2 => .isTrue (by cases h1.left; simp_all)
            | .isFalse h2 => .isFalse (by cases h1.left; simp_all)
          else
            .isFalse (by simp_all)
        | .var .. | .const .. | .bin .. | .un .. | .append .. | .replicate .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .bin llhs lop lrhs =>
        match r with
        | .bin rlhs rop rrhs =>
          if h1 : lop = rop then
            match decEq llhs rlhs, decEq lrhs rrhs with
            | .isTrue h2, .isTrue h3 => .isTrue (by simp [h1, h2, h3])
            | .isFalse h2, _ => .isFalse (by simp [h2])
            | _, .isFalse h3 => .isFalse (by simp [h3])
          else
            .isFalse (by simp [h1])
        | .const .. | .var .. | .extract .. | .un .. | .append .. | .replicate .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .un lop lexpr =>
        match r with
        | .un rop rexpr =>
          if h1 : lop = rop then
            match decEq lexpr rexpr with
            | .isTrue h2 => .isTrue (by simp [h1, h2])
            | .isFalse h2 => .isFalse (by simp [h2])
          else
            .isFalse (by simp [h1])
        | .const .. | .var .. | .extract .. | .bin .. | .append .. | .replicate .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .append (l := ll) (r := lr) llhs lrhs lh =>
        match r with
        | .append (l := rl) (r := rr) rlhs rrhs rh =>
          if h1 : ll = rl ∧ lr = rr then
            match decEq (h1.left ▸ llhs) rlhs, decEq (h1.right ▸ lrhs) rrhs with
            | .isTrue h2, .isTrue h3 => .isTrue (by cases h1.left; cases h1.right; simp [h2, h3])
            | .isFalse h2, _ => .isFalse (by cases h1.left; cases h1.right; simp [h2])
            | _, .isFalse h3 => .isFalse (by cases h1.left; cases h1.right; simp [h3])
          else
            .isFalse (by simp; omega)
        | .const .. | .var .. | .extract .. | .bin .. | .un .. | .replicate .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .replicate (w := lw) ln lexpr lh =>
        match r with
        | .replicate (w := rw) rn rexpr rh =>
          if h1 : ln = rn ∧ lw = rw then
            match decEq (h1.right ▸ lexpr) rexpr with
            | .isTrue h2 => .isTrue (by cases h1.left; cases h1.right; simp [h2])
            | .isFalse h2 => .isFalse (by cases h1.left; cases h1.right; simp [h2])
          else
            .isFalse (by simp; omega)
        | .const .. | .var .. | .extract .. | .bin .. | .un .. | .append .. | .shiftLeft ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)

      | .shiftLeft (n := lw) llhs lrhs =>
        match r with
        | .shiftLeft (n := rw) rlhs rrhs =>
          if h1 : lw = rw then
            match decEq llhs rlhs, decEq (h1 ▸ lrhs) rrhs with
            | .isTrue h2, .isTrue h3 => .isTrue (by cases h1; simp [h2, h3])
            | .isFalse h2, _ => .isFalse (by cases h1; simp [h2])
            | _, .isFalse h3 => .isFalse (by cases h1; simp [h3])
          else
            .isFalse (by simp [h1])
        | .const .. | .var .. | .extract .. | .bin .. | .un .. | .append .. | .replicate ..
        | .shiftRight .. | .arithShiftRight .. => .isFalse (by simp)
      | .shiftRight (n := lw) llhs lrhs =>
        match r with
        | .shiftRight (n := rw) rlhs rrhs =>
          if h1 : lw = rw then
            match decEq llhs rlhs, decEq (h1 ▸ lrhs) rrhs with
            | .isTrue h2, .isTrue h3 => .isTrue (by cases h1; simp [h2, h3])
            | .isFalse h2, _ => .isFalse (by cases h1; simp [h2])
            | _, .isFalse h3 => .isFalse (by cases h1; simp [h3])
          else
            .isFalse (by simp [h1])
        | .const .. | .var .. | .extract .. | .bin .. | .un .. | .append .. | .replicate ..
        |.shiftLeft .. | .arithShiftRight .. => .isFalse (by simp)
      | .arithShiftRight (n := lw) llhs lrhs =>
        match r with
        | .arithShiftRight (n := rw) rlhs rrhs =>
          if h1 : lw = rw then
            match decEq llhs rlhs, decEq (h1 ▸ lrhs) rrhs with
            | .isTrue h2, .isTrue h3 => .isTrue (by cases h1; simp [h2, h3])
            | .isFalse h2, _ => .isFalse (by cases h1; simp [h2])
            | _, .isFalse h3 => .isFalse (by cases h1; simp [h3])
          else
            .isFalse (by simp [h1])
        | .const .. | .var .. | .extract .. | .bin .. | .un .. | .append .. | .replicate ..
        | .shiftRight .. | .shiftLeft .. => .isFalse (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3c81f777c26ff12288bc5747d3ac46f580d1a3b86c7945a40b435a3332e94112.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e663fea736a59d0a61b9fa00c040eea6e4e0202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
