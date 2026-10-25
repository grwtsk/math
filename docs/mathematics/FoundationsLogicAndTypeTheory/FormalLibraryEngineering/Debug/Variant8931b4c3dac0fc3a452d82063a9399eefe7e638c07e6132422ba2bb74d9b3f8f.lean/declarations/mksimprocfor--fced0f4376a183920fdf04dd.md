# mkSimprocFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1469ac7c1ab7d27cb81600230ee5ee585010b67562ca69eea57d5587435bdca",
  "kind": "def",
  "lexical_name": "mkSimprocFor",
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
  "slug": "mksimprocfor--fced0f4376a183920fdf04dd",
  "source": {
    "blob": "de49e0db101d15bbcb5cc7d495a33074393a7923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Debug/Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fced0f4376a183920fdf04dd48f538789040eb0080171ca61a7d4ce164fb4094",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Debug/Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1469ac7c1ab7d27cb81600230ee5ee585010b67562ca69eea57d5587435bdca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkSimprocFor (declNames : Array Name) (d : Discharger := dischargeNone) : MetaM Simproc := do
  let mut thms : Theorems := {}
  for declName in declNames do
    thms := thms.insert (← mkTheoremFromDecl declName)
  return thms.rewrite d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Debug/Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Debug/Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de49e0db101d15bbcb5cc7d495a33074393a7923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
