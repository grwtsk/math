# eraseHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69adbd017a41f29d903fec2b6eaa8c212ab43e398bc9319bed91af3124c98940",
  "kind": "def",
  "lexical_name": "eraseHyps",
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
  "slug": "erasehyps--f0cd9baaa7c40127b20ab8f4",
  "source": {
    "blob": "b916c7c0e7b39c495fcb301e472d49d81602d3c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardRuleMatches/Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0cd9baaa7c40127b20ab8f42c08003073d1379f5e50ab52669b056b9c1f8a49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardRuleMatches/Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69adbd017a41f29d903fec2b6eaa8c212ab43e398bc9319bed91af3124c98940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseHyps (hs : Std.HashSet FVarId) (ms : ForwardRuleMatches) :
    ForwardRuleMatches where
  normMatches   := go ms.normMatches
  safeMatches   := go ms.safeMatches
  unsafeMatches := go ms.unsafeMatches
where
  go (ms : PHashSet ForwardRuleMatch) : PHashSet ForwardRuleMatch :=
    let toErase := ms.fold (init := #[]) λ toErase m =>
      if m.anyHyp hs.contains then toErase.push m else toErase
    toErase.foldl (init := ms) λ ms m => ms.erase m

/-- Erase matches containing the hypothesis `h` from `ms`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardRuleMatches/Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardRuleMatches/Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b916c7c0e7b39c495fcb301e472d49d81602d3c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
