# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96a352f6ccb22a011d8a573e2a786396ca970be93f99e1f2beb2b2255d382465",
  "kind": "initialize",
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
  "slug": "initialize--f9ca599b5a79dbdabf745286",
  "source": {
    "blob": "f40e4046dbd24cea511bafedd41701959ec9cce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9ca599b5a79dbdabf7452860297160271539ff4f8dc3224d46b9f993c3db5f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96a352f6ccb22a011d8a573e2a786396ca970be93f99e1f2beb2b2255d382465`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize registerTraceClass `Meta.CongrTheorems

/-- Generates a congruence lemma for a function `f` for `numArgs` of its arguments.
The only `Lean.Meta.CongrArgKind` kinds that appear in such a lemma
are `.eq`, `.heq`, and `.subsingletonInst`.
The resulting lemma proves either an `Eq` or a `HEq` depending on whether the types
of the LHS and RHS are equal or not.

This function is a wrapper around `Lean.Meta.mkHCongrWithArity`.
It transforms the resulting congruence lemma by trying to automatically prove hypotheses
using subsingleton lemmas, and if they are so provable they are recorded with `.subsingletonInst`.
Note that this is slightly abusing `.subsingletonInst` since
(1) the argument might not be for a `Decidable` instance and
(2) the argument might not even be an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant97e8c78a486bfd03d86903b32d64e499e51b5405db17d7f698c87be8b7a8955f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40e4046dbd24cea511bafedd41701959ec9cce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
