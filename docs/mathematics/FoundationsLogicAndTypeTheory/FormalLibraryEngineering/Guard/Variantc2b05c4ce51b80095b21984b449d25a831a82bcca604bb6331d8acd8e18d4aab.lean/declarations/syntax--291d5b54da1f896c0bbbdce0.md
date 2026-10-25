# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:889aa0e64bbe20188e14f4d78e87ca9a21a0d322cdd93e37411d9fcb05802b9c",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--291d5b54da1f896c0bbbdce0",
  "source": {
    "blob": "176a10fed9de0a9203cdb2a62275e4f9d9f0b192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variantc2b05c4ce51b80095b21984b449d25a831a82bcca604bb6331d8acd8e18d4aab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:291d5b54da1f896c0bbbdce0e566d1ccaabdbb928a7a6dd899e5492585e0472b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variantc2b05c4ce51b80095b21984b449d25a831a82bcca604bb6331d8acd8e18d4aab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:889aa0e64bbe20188e14f4d78e87ca9a21a0d322cdd93e37411d9fcb05802b9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax (name := guardTargetConv) "guard_target " equal term : conv

/--
Tactic to check that a named hypothesis has a given type and/or value.

* `guard_hyp h : t` checks the type up to reducible defeq,
* `guard_hyp h :~ t` checks the type up to default defeq,
* `guard_hyp h :ₛ t` checks the type up to syntactic equality,
* `guard_hyp h :ₐ t` checks the type up to alpha equality.
* `guard_hyp h := v` checks value up to reducible defeq,
* `guard_hyp h :=~ v` checks value up to default defeq,
* `guard_hyp h :=ₛ v` checks value up to syntactic equality,
* `guard_hyp h :=ₐ v` checks the value up to alpha equality.

The value `v` is elaborated using the type of `h` as the expected type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variantc2b05c4ce51b80095b21984b449d25a831a82bcca604bb6331d8acd8e18d4aab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guard/Variantc2b05c4ce51b80095b21984b449d25a831a82bcca604bb6331d8acd8e18d4aab.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `176a10fed9de0a9203cdb2a62275e4f9d9f0b192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
