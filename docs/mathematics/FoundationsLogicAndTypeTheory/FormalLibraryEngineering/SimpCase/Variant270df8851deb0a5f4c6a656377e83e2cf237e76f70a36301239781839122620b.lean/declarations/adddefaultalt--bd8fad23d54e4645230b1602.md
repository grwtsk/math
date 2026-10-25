# addDefaultAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:babe164025d511b2fdc185266dfbd8bbd9dc34dc11213ba912202f7842262bce",
  "kind": "def",
  "lexical_name": "addDefaultAlt",
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
  "slug": "adddefaultalt--bd8fad23d54e4645230b1602",
  "source": {
    "blob": "a5c1d0a9e8f956962b1c98839923e3445a61e078",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd8fad23d54e4645230b16020e2d32e2a94f4268177c8bc030f0321f0e7660f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:babe164025d511b2fdc185266dfbd8bbd9dc34dc11213ba912202f7842262bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addDefaultAlt (alts : Array (Alt .impure)) : CompilerM (Array (Alt .impure)) := do
  if alts.size <= 1 || alts.any (· matches .default ..) then
    return alts
  else
    let (max, noccs) := getMaxOccs alts
    if noccs == 1 then
      return alts
    else
      let mut altsNew := #[]
      let mut first := true
      for alt in alts do
        if Code.alphaEqv alt.getCode max.getCode then
          let .ctorAlt _ k := alt | unreachable!
          unless first do
            eraseCode k
          first := false
        else
          altsNew := altsNew.push alt
      return altsNew.push (.default max.getCode)

/--
Remove all unreachable cases.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5c1d0a9e8f956962b1c98839923e3445a61e078` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
