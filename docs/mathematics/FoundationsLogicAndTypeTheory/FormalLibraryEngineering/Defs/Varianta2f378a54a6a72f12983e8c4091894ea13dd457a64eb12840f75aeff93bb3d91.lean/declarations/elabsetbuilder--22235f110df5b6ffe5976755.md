# elabSetBuilder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:580fd310a9922b3ff4db0575ba9f764831551244a02c1dcb1f2ee2ce641bef66",
  "kind": "def",
  "lexical_name": "elabSetBuilder",
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
  "slug": "elabsetbuilder--22235f110df5b6ffe5976755",
  "source": {
    "blob": "fb5c7d2248e3a8462b0aed868395d8ca1be9b157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Varianta2f378a54a6a72f12983e8c4091894ea13dd457a64eb12840f75aeff93bb3d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22235f110df5b6ffe597675588b187d380d9f0b436950f608d0970e337456876",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Varianta2f378a54a6a72f12983e8c4091894ea13dd457a64eb12840f75aeff93bb3d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:580fd310a9922b3ff4db0575ba9f764831551244a02c1dcb1f2ee2ce641bef66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def elabSetBuilder : TermElab
  | `({ $x:ident | $p }), expectedType? => do
    elabTerm (← `(Set.ofPred fun $x:ident ↦ $p)) expectedType?
  | `({ $x:ident : $t | $p }), expectedType? => do
    elabTerm (← `(Set.ofPred fun $x:ident : $t ↦ $p)) expectedType?
  | `({ $x:ident $b:binderPred | $p }), expectedType? => do
    elabTerm (← `(Set.ofPred fun $x:ident ↦ satisfies_binder_pred% $x $b ∧ $p)) expectedType?
  | _, _ => throwUnsupportedSyntax

/-- Unexpander for set builder notation. -/
@[app_unexpander Set.ofPred]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Varianta2f378a54a6a72f12983e8c4091894ea13dd457a64eb12840f75aeff93bb3d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Varianta2f378a54a6a72f12983e8c4091894ea13dd457a64eb12840f75aeff93bb3d91.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5c7d2248e3a8462b0aed868395d8ca1be9b157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
