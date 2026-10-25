# Code.insertResetReuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0a301997d908fba399e98f587eab048373eb8024c128bd9dc46d755264eca20",
  "kind": "def",
  "lexical_name": "Code.insertResetReuse",
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
  "slug": "code-insertresetreuse--ed4ef2f982867698c49d8d27",
  "source": {
    "blob": "860c30661e28b97e6e927a7986e0807fab2d80d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed4ef2f982867698c49d8d27cf75ab07ad0412c6c3066dbba78438a42e9cab71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0a301997d908fba399e98f587eab048373eb8024c128bd9dc46d755264eca20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.insertResetReuse (c : Code .impure) : ReuseM (Code .impure) := do
  match c with
  | .cases cs =>
    let alreadyFound := (← read).alreadyFound.contains cs.discr
    let borrowed := (← read).ownedness.getD cs.discr .bot == .borrow
    withReader (fun ctx => { ctx with alreadyFound := ctx.alreadyFound.insert cs.discr }) do
      let alts ← cs.alts.mapM fun alt => do
        let alt ← alt.mapCodeM (·.insertResetReuse)
        match alt with
        | .ctorAlt info k =>
          if info.isScalar || alreadyFound || borrowed then
            -- If `alreadyFound`, then we don't try to reuse memory cell to avoid
            -- double reset.
            return alt
          else
            return alt.updateCode (← D cs.discr info k)
        | .default .. => return alt
      return c.updateAlts! alts
  | .jp decl k =>
    let value ← decl.value.insertResetReuse
    let decl ← decl.updateValue value
    let k ← k.insertResetReuse
    return c.updateFun! decl k
  | .let _ k | .uset _ _ _ k _ | .sset _ _ _ _ _ k _  =>
    return c.updateCont! (← k.insertResetReuse)
  | .return .. | .jmp .. | .unreach .. => return c
  | .inc .. | .dec .. | .setTag .. | .oset .. | .del .. => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResetReuse/Variantab66760f0aa1b007a40fbcb8daeb4ef15c95e9f37b01391daa7ed9f9ba0cac92.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860c30661e28b97e6e927a7986e0807fab2d80d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
