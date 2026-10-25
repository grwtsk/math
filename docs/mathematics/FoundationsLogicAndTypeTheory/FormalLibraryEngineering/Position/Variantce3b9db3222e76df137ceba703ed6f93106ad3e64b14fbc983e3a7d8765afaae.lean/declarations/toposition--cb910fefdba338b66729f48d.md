# toPosition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d81b72278eba98e4fd398cbbd7936ea4a302902a5d4a8fc1c6f2407412b7957e",
  "kind": "def",
  "lexical_name": "toPosition",
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
  "slug": "toposition--cb910fefdba338b66729f48d",
  "source": {
    "blob": "daaacce52ab4320b949e8e1b1d4c63d7c975c11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb910fefdba338b66729f48dbc2acb36420a42f48909fea4031024ac76146811",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d81b72278eba98e4fd398cbbd7936ea4a302902a5d4a8fc1c6f2407412b7957e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toPosition (fmap : FileMap) (pos : String.Pos.Raw) : Position :=
  match fmap with
  | { source := str, positions := ps } =>
    if ps.size >= 2 && pos <= ps.back! then
      let rec toColumn (i : String.Pos.Raw) (c : Nat) : Nat :=
        if i == pos || i.atEnd str then c
        else toColumn (i.next str) (c+1)
      let rec loop (b e : Nat) :=
        let posB := ps[b]!
        if e == b + 1 then { line := fmap.getLine b, column := toColumn posB 0 }
        else
          let m := (b + e) / 2;
          let posM := ps[m]!
          if pos == posM then { line := fmap.getLine m, column := 0 }
          else if pos > posM then loop m e
          else loop b m
      loop 0 (ps.size - 1)
    else if ps.isEmpty then
      ⟨0, 0⟩
    else
      -- Some systems like the delaborator use synthetic positions without an input file,
      -- which would violate `toPositionAux`'s invariant.
      -- Can also happen with EOF errors, which are not strictly inside the file.
      ⟨fmap.getLastLine, ps.back!.byteDistance pos⟩

/-- Convert a `Lean.Position` to a `String.Pos`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daaacce52ab4320b949e8e1b1d4c63d7c975c11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
