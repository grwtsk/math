# SpectrumRestricts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22e465e0e1120b3d32b09faa2da7f1cb051edc72fd44dda8a31a7189eae6cf68",
  "kind": "def",
  "lexical_name": "SpectrumRestricts",
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
  "slug": "spectrumrestricts--9d011ec053212cb3892400e9",
  "source": {
    "blob": "624ac7e8f17ee31626f9387fc9c2018f38c4c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 572,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d011ec053212cb3892400e9ecec5f95ebc967c7b13ce4c900556e25dccde4d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22e465e0e1120b3d32b09faa2da7f1cb051edc72fd44dda8a31a7189eae6cf68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SpectrumRestricts
    {R S A : Type*} [Semifield R] [Semifield S] [Ring A]
    [Algebra R A] [Algebra S A] [Algebra R S] (a : A) (f : S → R) : Prop :=
  QuasispectrumRestricts a f

namespace SpectrumRestricts

section Unital

variable {R S A : Type*} [Semifield R] [Semifield S] [Ring A]
variable [Algebra R S] [Algebra R A] [Algebra S A] {a : A} {f : S → R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant61662c1397414f001644dd55f590e63278ad0292bafd7a429ca9d4a4b010a72f.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624ac7e8f17ee31626f9387fc9c2018f38c4c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
