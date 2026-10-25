# NonnegSpectrumClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b080a7d57cfa72afc02c17b69c43f3ffc16650a7b4abcb0991934d1bffc07335",
  "kind": "class",
  "lexical_name": "NonnegSpectrumClass",
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
  "slug": "nonnegspectrumclass--da59d88cd69ad871cc4a5681",
  "source": {
    "blob": "dbd8602c2cd8a81cb090f9586748676b155ace91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 399,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da59d88cd69ad871cc4a5681fe62841d5d978f659b5fd58059bdee3e11069393",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b080a7d57cfa72afc02c17b69c43f3ffc16650a7b4abcb0991934d1bffc07335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonnegSpectrumClass (𝕜 A : Type*) [CommSemiring 𝕜] [PartialOrder 𝕜]
    [NonUnitalRing A] [PartialOrder A]
    [Module 𝕜 A] : Prop where
  quasispectrum_nonneg_of_nonneg : ∀ a : A, 0 ≤ a → ∀ x ∈ quasispectrum 𝕜 a, 0 ≤ x

export NonnegSpectrumClass (quasispectrum_nonneg_of_nonneg)

namespace NonnegSpectrumClass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd8602c2cd8a81cb090f9586748676b155ace91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
