# findSccCalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb60bc9eec50108947aea11db17394c584e03ef50e54b8d3bdfcab4556b522fb",
  "kind": "def",
  "lexical_name": "findSccCalls",
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
  "slug": "findscccalls--4ab76acea2163c607680bcf3",
  "source": {
    "blob": "d3e56068130205ce16b863a9cd255bb15e1df68e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variante326c47d8f05ffa07ab8fc2dcde483c90b597f5c64d3a4bc7e3a4398dac2c9d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ab76acea2163c607680bcf3d456594dabad3baba22522bafe3e9ce442eceeab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variante326c47d8f05ffa07ab8fc2dcde483c90b597f5c64d3a4bc7e3a4398dac2c9d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb60bc9eec50108947aea11db17394c584e03ef50e54b8d3bdfcab4556b522fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findSccCalls (scc : Std.HashMap Name (Decl pu)) (decl : Decl pu) : BaseIO (Std.HashSet Name) := do
  match decl.value with
  | .code code =>
    let (_, calls) ← goCode code |>.run {}
    return calls
  | .extern .. => return {}
where
  goCode (c : Code pu) : StateRefT (Std.HashSet Name) BaseIO Unit := do
    c.forM fun c => do
      if let .let decl _ := c then
        match decl.value with
        | .const name .. | .fap name .. | .pap name .. =>
          if scc.contains name then
            modify fun s => s.insert name
        | _ => return

end SplitScc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variante326c47d8f05ffa07ab8fc2dcde483c90b597f5c64d3a4bc7e3a4398dac2c9d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitSCC/Variante326c47d8f05ffa07ab8fc2dcde483c90b597f5c64d3a4bc7e3a4398dac2c9d6.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e56068130205ce16b863a9cd255bb15e1df68e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
