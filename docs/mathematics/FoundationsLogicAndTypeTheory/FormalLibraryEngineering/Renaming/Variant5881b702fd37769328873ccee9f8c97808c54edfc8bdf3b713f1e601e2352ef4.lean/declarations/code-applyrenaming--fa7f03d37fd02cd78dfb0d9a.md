# Code.applyRenaming

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:926bec30f7386268c19a1791c1550d848bc71c406e64a81a31ba92635a972f14",
  "kind": "def",
  "lexical_name": "Code.applyRenaming",
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
  "slug": "code-applyrenaming--fa7f03d37fd02cd78dfb0d9a",
  "source": {
    "blob": "c2782f94335656bf1b90f1da8efd92e76be8409b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Renaming/Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa7f03d37fd02cd78dfb0d9a4e2637636c47513115bd3a9eca0acc2397ae23e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Renaming/Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:926bec30f7386268c19a1791c1550d848bc71c406e64a81a31ba92635a972f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.applyRenaming (code : Code pu) (r : Renaming) : CompilerM (Code pu) := do
  match code with
  | .let decl k => return code.updateLet! (← decl.applyRenaming r) (← k.applyRenaming r)
  | .fun decl k _ | .jp decl k => return code.updateFun! (← decl.applyRenaming r) (← k.applyRenaming r)
  | .cases c =>
    let alts ← c.alts.mapMonoM fun alt =>
      match alt with
      | .default k => return alt.updateCode (← k.applyRenaming r)
      | .alt _ ps k _ => return alt.updateAlt! (← ps.mapMonoM (·.applyRenaming r)) (← k.applyRenaming r)
      | .ctorAlt _ k _ => return alt.updateCode (← k.applyRenaming r)
    return code.updateAlts! alts
  | .jmp .. | .unreach .. | .return .. => return code
  | .oset (k := k) .. | .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) ..
  | .del (k := k) .. | .setTag (k := k) .. =>
    return code.updateCont! (← k.applyRenaming r)
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Renaming/Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Renaming/Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2782f94335656bf1b90f1da8efd92e76be8409b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
