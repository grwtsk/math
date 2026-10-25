# ppTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cca34c54cdc7e477868f894b20e530c1005603edc815524b7675c2aae63a15a",
  "kind": "def",
  "lexical_name": "ppTable",
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
  "slug": "pptable--00fa8fe05c409fce922fac88",
  "source": {
    "blob": "e3c7f582b2f59d24f804f40588714e2af760eb45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00fa8fe05c409fce922fac88efec20bcee4e6e318bb2a7e24a6fb064cc8133c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cca34c54cdc7e477868f894b20e530c1005603edc815524b7675c2aae63a15a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def ppTable (t : Table) : String :=
  let (ts, fs) := t.items.foldl (init := ("", "")) fun (ts, fs) (k,v) =>
    match v with
    | .array _ vs =>
      if vs.isEmpty then
        (ts.append s!"{ppKey k} = []\n", fs)
      else if vs.all (· matches .table ..) then
        let fs := vs.foldl (init := fs) fun s v =>
          match v with
          | .table _ t =>
            let s := s ++ s!"[[{ppKey k}]]\n"
            let s := t.items.foldl (fun s (k,v) => appendKeyval s k v) s
            s.push '\n'
          | _ => unreachable!
        (ts, fs)
      else
        (ts.append s!"{ppKey k} = {ppInlineArray vs}\n", fs)
    | .table _ t =>
      let fs := fs ++ s!"[{ppKey k}]\n"
      let fs := t.items.foldl (fun s (k,v) => appendKeyval s k v) fs
      (ts, fs.push '\n')
    | _ => (appendKeyval ts k v, fs)
  -- Ensures root table keys come before subtables
  -- See https://github.com/leanprover/lean4/issues/4099
  (ts.push '\n' ++ fs).trimAsciiEnd.copy.push '\n'
where
  appendKeyval s k v :=
    s.append s!"{ppKey k} = {v}\n"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3c7f582b2f59d24f804f40588714e2af760eb45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
