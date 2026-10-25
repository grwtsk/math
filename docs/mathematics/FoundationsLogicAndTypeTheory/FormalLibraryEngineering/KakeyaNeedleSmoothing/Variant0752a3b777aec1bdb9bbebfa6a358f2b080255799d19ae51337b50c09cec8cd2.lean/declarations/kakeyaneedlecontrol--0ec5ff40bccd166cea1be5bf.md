# KakeyaNeedleControl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:758431fd714fac44068d7286796be0db1e845faf47bfafd6264507b1fb75a05e",
  "kind": "structure",
  "lexical_name": "KakeyaNeedleControl",
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
  "slug": "kakeyaneedlecontrol--0ec5ff40bccd166cea1be5bf",
  "source": {
    "blob": "780f7768e5aa8f6bd5933dbebccef1ba4ac6644c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaNeedleSmoothing/Variant0752a3b777aec1bdb9bbebfa6a358f2b080255799d19ae51337b50c09cec8cd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ec5ff40bccd166cea1be5bf5904851acbd91543e5f7ce5aab58220ee0db3c95",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaNeedleSmoothing/Variant0752a3b777aec1bdb9bbebfa6a358f2b080255799d19ae51337b50c09cec8cd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:758431fd714fac44068d7286796be0db1e845faf47bfafd6264507b1fb75a05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KakeyaNeedleControl where
  glitch : GlitchedTraversal
  directionSpaceLabel : String
  actionLabel : String
  preservesVerifier : Prop
  preservesVerifier_certified : preservesVerifier
  preservesDecompressionCorrectness : Prop
  preservesDecompressionCorrectness_certified :
    preservesDecompressionCorrectness
  sourceLabel : String

/--
Conditional Kakeya-needle smoothing contract.

If the pivot is non-sticky, the needle action preserves verifier and
decompression correctness, and induction scaling is polynomial, then the
glitch has a supplied polynomial smoothing proposition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaNeedleSmoothing/Variant0752a3b777aec1bdb9bbebfa6a358f2b080255799d19ae51337b50c09cec8cd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaNeedleSmoothing/Variant0752a3b777aec1bdb9bbebfa6a358f2b080255799d19ae51337b50c09cec8cd2.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `780f7768e5aa8f6bd5933dbebccef1ba4ac6644c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
