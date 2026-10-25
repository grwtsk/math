# fintypeRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ebdd70954f1ef4f77dd8cad13d5cebc53ace2fab2f05b7a95feaf81516816be",
  "kind": "instance",
  "lexical_name": "fintypeRange",
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
  "slug": "fintyperange--ee636efe268577f281c362fc",
  "source": {
    "blob": "4bfc10ad2a130fa467804b206dafbf6c90db3de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee636efe268577f281c362fcd2748dc930476178eea4d9980cb8e9e1977ce1df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ebdd70954f1ef4f77dd8cad13d5cebc53ace2fab2f05b7a95feaf81516816be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeRange [Fintype R] [DecidableEq S] (f : R →ₙ+* S) : Fintype (range f) :=
  Set.fintypeRange f

end NonUnitalRingHom

namespace NonUnitalSubring

section Order

variable {F : Type w} {R : Type u} {S : Type v} {T : Type*}
  [NonUnitalNonAssocRing R] [NonUnitalNonAssocRing S] [NonUnitalNonAssocRing T]
  [NonUnitalRingHomClass F R S]
  (g : S →ₙ+* T) (f : R →ₙ+* S)

/-! ## bot -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bfc10ad2a130fa467804b206dafbf6c90db3de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
