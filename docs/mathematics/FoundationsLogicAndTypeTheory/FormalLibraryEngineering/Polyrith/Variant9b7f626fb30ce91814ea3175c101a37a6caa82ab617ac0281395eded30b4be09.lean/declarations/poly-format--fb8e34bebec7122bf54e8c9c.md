# Poly.format

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3974543931511b5cf27554a4c33bd641c4de8f7b7a110e7eb5ee067eb1d398a",
  "kind": "def",
  "lexical_name": "Poly.format",
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
  "slug": "poly-format--fb8e34bebec7122bf54e8c9c",
  "source": {
    "blob": "ced04f991a97441d85f7a185eab1527b0a1aafc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb8e34bebec7122bf54e8c9c712c499e5c5c4aaeaf7fa5c3ffa3a4d0bd6b6373",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3974543931511b5cf27554a4c33bd641c4de8f7b7a110e7eb5ee067eb1d398a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Poly.format : Poly → Lean.Format
  | .const z => toString z
  | .var n => s!"vars[{n}]" -- this references variable `vars`, which need to be bounded (below)
  | .hyp e => s!"hyp{e}" -- this one can't be used by python
  | .add p q => s!"({p.format} + {q.format})"
  | .sub p q => s!"({p.format} - {q.format})"
  | .mul p q => s!"({p.format} * {q.format})"
  | .div p q => s!"({p.format} / {q.format})" -- this one can't be used by python
  | .pow p q => s!"({p.format} ^ {q.format})"
  | .neg p => s!"-{p.format}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced04f991a97441d85f7a185eab1527b0a1aafc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
