# IsGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2ea69ec642525299ed4cb8f9b6ddcfa33d848b4392d4f4e5c8fe555696e09e5",
  "kind": "structure",
  "lexical_name": "IsGood",
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
  "slug": "isgood--f4c20cc7c6b33df64d1c0d20",
  "source": {
    "blob": "9e5650029892cdcb767217393bb4e68a3820010a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant45c3ce425dde9dd3a5dd3ecfd7f49c052abf20ccd5bbc131cbc7b8cc3611cf51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4c20cc7c6b33df64d1c0d20180adbb0a3f599c40d550346a4da72c927fddb67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant45c3ce425dde9dd3a5dd3ecfd7f49c052abf20ccd5bbc131cbc7b8cc3611cf51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2ea69ec642525299ed4cb8f9b6ddcfa33d848b4392d4f4e5c8fe555696e09e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsGood (f : ℕ+ → ℕ) : Prop where
  /-- The function satisfies the functional relation. -/
  rel : ∀ m n : ℕ+, f (m + n) = f m + f n ∨ f (m + n) = f m + f n + 1
  f₂ : f 2 = 0
  hf₃ : 0 < f 3
  f_9999 : f 9999 = 3333

namespace IsGood

variable {f : ℕ+ → ℕ} (hf : IsGood f)
include hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant45c3ce425dde9dd3a5dd3ecfd7f49c052abf20ccd5bbc131cbc7b8cc3611cf51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1982Q1/Variant45c3ce425dde9dd3a5dd3ecfd7f49c052abf20ccd5bbc131cbc7b8cc3611cf51.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e5650029892cdcb767217393bb4e68a3820010a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
