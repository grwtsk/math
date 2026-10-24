# unpackCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7edb6b15367fe1e2fff9f506dc6d538275947d797981590137f4c2c50a866c36",
  "kind": "def",
  "lexical_name": "unpackCache",
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
  "slug": "unpackcache--27a0c6a344f0bc7c1bb3a554",
  "source": {
    "blob": "18be54ec55b9e66b175d4537be5f6a1b7dab57ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 379,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27a0c6a344f0bc7c1bb3a554767d06b3b264f7c92751d63372c2af5c29e14eee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7edb6b15367fe1e2fff9f506dc6d538275947d797981590137f4c2c50a866c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unpackCache (hashMap : ModuleHashMap) (force : Bool) : CacheM Unit := do
  let hashMap ← hashMap.filterExists true
  let size := hashMap.size
  if size > 0 then
    let now ← IO.monoMsNow
    IO.println s!"Decompressing {size} file(s)"
    let args := (if force then #["-f"] else #[]) ++ #["-x", "--delete-corrupted", "-j", "-"]
    let child ← IO.Process.spawn { cmd := ← getLeanTar, args, stdin := .piped }
    let (stdin, child) ← child.takeStdin
    /-
    TODO: The case distinction below could be avoided by making use of the `leantar` option `-C`
    (rsp the `"base"` field in JSON format, see below) here and in `packCache`.

    See also https://github.com/leanprover-community/mathlib4/pull/8767#discussion_r1422077498

    Doing this, one could avoid that the package directory path (for dependencies) appears
    inside the leantar files, but unless `cache` is upstreamed to work on upstream packages
    themselves (without `Mathlib`), this might not be too useful to change.

    NOTE: making changes to the generated .ltar files invalidates them while it *DOES NOT* change
    the file hash! This means any such change needs to be accompanied by a change
    to the root hash affecting *ALL* files
    (e.g. any modification to lakefile, lean-toolchain or manifest)
    -/
    let isMathlibRoot ← isMathlibRoot
    let mathlibDepPath := (← read).mathlibDepPath.toString
    let config : Array Lean.Json := hashMap.fold (init := #[]) fun config mod hash =>
      let pathStr := s!"{CACHEDIR / hash.asLTar}"
      if isMathlibRoot || !isFromMathlib mod then
        config.push <| .str pathStr
      else
        -- only mathlib files, when not in the mathlib4 repo, need to be redirected
        config.push <| .mkObj [("file", pathStr), ("base", mathlibDepPath)]
    stdin.putStr <| Lean.Json.compress <| .arr config
    let exitCode ← child.wait
    if exitCode != 0 then throw <| IO.userError s!"leantar failed with error code {exitCode}"
    IO.println s!"Unpacked in {(← IO.monoMsNow) - now} ms"
    IO.println "Completed successfully!"
  else IO.println "No cache files to decompress"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantc2be8405c1e063e3c953870811588e40aad15e3fb8f402bfc5c6ae367e7c8d6b.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18be54ec55b9e66b175d4537be5f6a1b7dab57ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
