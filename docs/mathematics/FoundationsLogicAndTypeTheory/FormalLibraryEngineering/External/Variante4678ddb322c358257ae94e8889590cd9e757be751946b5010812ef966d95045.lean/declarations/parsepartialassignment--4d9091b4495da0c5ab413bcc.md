# parsePartialAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fa8aceef5edab5cc22de5b3103cf732452cc7410829714d18203409ba4c21c0",
  "kind": "def",
  "lexical_name": "parsePartialAssignment",
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
  "slug": "parsepartialassignment--4d9091b4495da0c5ab413bcc",
  "source": {
    "blob": "395c599742dd1b357969308a146d25cbc34605b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d9091b4495da0c5ab413bcc2ceafd4cbac6609bf751dba09f5efb10b90cc3f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fa8aceef5edab5cc22de5b3103cf732452cc7410829714d18203409ba4c21c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parsePartialAssignment : Parser (Bool × (Array (Bool × Nat))) := do
  skipByteChar 'v'
  let idents ← many (attempt wsLit)
  let idents := idents.map (fun i => if i > 0 then (true, i.natAbs) else (false, i.natAbs))
  tryCatch
    (skipString " 0")
    (csuccess := fun _ => pure (true, idents))
    (cerror := fun _ => do
      skipNewline
      return (false, idents)
    )
where
  @[inline]
  wsLit : Parser Int := do
    skipByteChar ' '
    LRAT.Parser.Text.parseLit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `395c599742dd1b357969308a146d25cbc34605b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
