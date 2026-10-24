# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:179eb8ca2834d19e4e77a8c8bb2f5f4bee71c63216636959b72678dc58297615",
  "kind": "instance",
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
  "slug": "instance--3bdf76a0ae9c9610add5f446",
  "source": {
    "blob": "eccf13d88ed8332f116cb067d9996a128f8a25a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 251,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant92f9303039a626d4bf923b27a997a4991516e24bf27ed04372ab84544b44a0fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bdf76a0ae9c9610add5f44633063d97bbc6335ab3c2c4377b2a4e7612effba2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant92f9303039a626d4bf923b27a997a4991516e24bf27ed04372ab84544b44a0fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:179eb8ca2834d19e4e77a8c8bb2f5f4bee71c63216636959b72678dc58297615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 75) NonUnitalSubalgebraClass.nonUnitalSeminormedRing {S 𝕜 E : Type*}
    [CommRing 𝕜] [NonUnitalSeminormedRing E] [Module 𝕜 E] [SetLike S E] [NonUnitalSubringClass S E]
    [SMulMemClass S 𝕜 E] (s : S) :
    NonUnitalSeminormedRing s :=
  { AddSubgroupClass.seminormedAddCommGroup s, NonUnitalSubringClass.toNonUnitalRing s with
    norm_mul_le a b := norm_mul_le a.1 b.1 }

/-- A non-unital subalgebra of a non-unital normed ring is also a non-unital normed ring, with the
restriction of the norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant92f9303039a626d4bf923b27a997a4991516e24bf27ed04372ab84544b44a0fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant92f9303039a626d4bf923b27a997a4991516e24bf27ed04372ab84544b44a0fc.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccf13d88ed8332f116cb067d9996a128f8a25a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
