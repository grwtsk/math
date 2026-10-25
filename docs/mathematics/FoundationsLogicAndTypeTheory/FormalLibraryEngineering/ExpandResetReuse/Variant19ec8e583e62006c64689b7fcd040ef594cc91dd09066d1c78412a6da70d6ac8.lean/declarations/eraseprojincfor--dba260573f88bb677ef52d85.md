# eraseProjIncFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f866a5232fa741545d42b6850205cd78132f88f0bbdee4bba2472eb1f7d6171",
  "kind": "def",
  "lexical_name": "eraseProjIncFor",
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
  "slug": "eraseprojincfor--dba260573f88bb677ef52d85",
  "source": {
    "blob": "06e6d2d0504d740de91d6e8395a9a268c2d01698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dba260573f88bb677ef52d85524f07d5fe9212a7958fe72be31dfc3967e374b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f866a5232fa741545d42b6850205cd78132f88f0bbdee4bba2472eb1f7d6171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def eraseProjIncFor (nFields : Nat) (targetId : FVarId) (ds : Array (CodeDecl .impure)) :
    CompilerM (Array (CodeDecl .impure) × Mask) := do
  let mut ds := ds
  let mut keep := #[]
  let mut mask := Array.replicate nFields none
  while ds.size ≥ 2 do
    let d := ds.back!
    match d with
    | .let { value := .sproj .., .. } | .let { value := .uproj .., .. } =>
      ds := ds.pop
      keep := keep.push d
    | .inc z n c p =>
      assert! n > 0 -- 0 incs should not be happening
      let d' := ds[ds.size - 2]!
      let .let { fvarId := w, value := .oproj i x _, .. } := d'
        | break
      if !(w == z && targetId == x) then
        break
      if mask[i]!.isSome then
        /-
        Suppose we encounter a situation like
        ```
        let x.1 := proj[0] y
        inc x.1
        let x.2 := proj[0] y
        inc x.2
        ```
        The `inc x.2` will already have been removed. If we don't perform this check we will also
        remove `inc x.1` and have effectively removed two refcounts while only one was legal.
        -/
        keep := keep.push d
        keep := keep.push d'
        ds := ds.pop.pop
        continue
      /-
      Found
      ```
      let z := proj[i] targetId
      inc z n c
      ```
      We keep `proj`, and `inc` when `n > 1`
      -/
      ds := ds.pop.pop
      mask := mask.set! i (some z)
      keep := keep.push d'
      keep := if n == 1 then keep else keep.push (.inc z (n - 1) c p)
    | _ => break

  return (ds ++ keep.reverse, mask)

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant19ec8e583e62006c64689b7fcd040ef594cc91dd09066d1c78412a6da70d6ac8.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06e6d2d0504d740de91d6e8395a9a268c2d01698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
