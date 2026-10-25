# expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:253418f2ff43092759db86dd83e6431c2f470d3c616437956190184d4918e5ef",
  "kind": "def",
  "lexical_name": "expand",
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
  "slug": "expand--4485ecfff54a26a61d3b6b24",
  "source": {
    "blob": "68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 659,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4485ecfff54a26a61d3b6b2453611b0b03e6d74c3a5ac14424d35ef58dc999d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:253418f2ff43092759db86dd83e6431c2f470d3c616437956190184d4918e5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expand (e : Expr) : MetaM Expr := do
  let env ← getEnv
  let reorderFn : Name → List (List ℕ) := fun nm ↦ (reorderAttr.find? env nm |>.getD [])
  let e₂ ← Lean.Meta.transform (input := e) (post := fun e => return .done e) fun e ↦ do
    let e0 := e.getAppFn
    let es := e.getAppArgs
    let some e0n := e0.constName? | return .continue
    let reorder := reorderFn e0n
    if reorder.isEmpty then
      -- no need to expand if nothing needs reordering
      return .continue
    let needed_n := reorder.flatten.foldr Nat.max 0 + 1
    -- the second disjunct is a temporary fix to avoid infinite loops.
    -- We may need to use `replaceRec` or something similar to not change the head of an application
    if needed_n ≤ es.size || es.size == 0 then
      return .continue
    else
      -- in this case, we need to reorder arguments that are not yet
      -- applied, so first η-expand the function.
      let e' ← etaExpandN (needed_n - es.size) e
      trace[to_additive_detail] "expanded {e} to {e'}"
      return .continue e'
  if e != e₂ then
    trace[to_additive_detail] "expand:\nBefore: {e}\nAfter: {e₂}"
  return e₂

/-- Reorder pi-binders. See doc of `reorderAttr` for the interpretation of the argument -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant069edb532fdb4833e6c83256f30f5ec3898bb973909c8ea7ad3005473a0c26de.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68138ccfe54e8c7a4fe4d54f67af05cfcc444fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
