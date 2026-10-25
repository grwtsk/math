# Lean.Lsp.Position.advance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e27ac7795c80e93e60bf5286fefc85881f3a4b636f1d8d346b262de32d063c0",
  "kind": "def",
  "lexical_name": "Lean.Lsp.Position.advance",
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
  "slug": "lean-lsp-position-advance--f9725bda24ad67def4125276",
  "source": {
    "blob": "84956ff7eb4e50c418f8b44287e02ea46a129840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9725bda24ad67def4125276dce2e06db001e1ef61f595f37774890d3c2efc08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e27ac7795c80e93e60bf5286fefc85881f3a4b636f1d8d346b262de32d063c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Lsp.Position.advance (p : Position) (s : Substring.Raw) : Position :=
  let (nLinesAfter, lastLineUtf16Sz) := s.foldl
    (init := (0, 0))
    fun (n, l) c => if c == '\n' then (n + 1, 0) else (n, l + (ProofWidgets.Internal.utf16Size c).toNat)
  {
    line := p.line + nLinesAfter
    character := (if nLinesAfter == 0 then p.character else 0) + lastLineUtf16Sz
  }

namespace ProofWidgets
open Lean

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MakeEditLink/Variant2d63ec5328d329edbf801a3bc86c865cc0fbc8b44f5060f9d00864b2a0228886.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84956ff7eb4e50c418f8b44287e02ea46a129840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
