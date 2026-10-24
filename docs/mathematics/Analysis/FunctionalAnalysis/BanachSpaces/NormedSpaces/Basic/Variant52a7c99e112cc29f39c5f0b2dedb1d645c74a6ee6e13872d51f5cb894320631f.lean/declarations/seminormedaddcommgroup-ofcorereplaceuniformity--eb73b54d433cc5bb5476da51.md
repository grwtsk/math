# SeminormedAddCommGroup.ofCoreReplaceUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77df89e69cf37fb91a06afbb69e180a36f2385a14030c6dbe3aa4d5162c885c8",
  "kind": "abbrev",
  "lexical_name": "SeminormedAddCommGroup.ofCoreReplaceUniformity",
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
  "slug": "seminormedaddcommgroup-ofcorereplaceuniformity--eb73b54d433cc5bb5476da51",
  "source": {
    "blob": "4c77fe8ce4676de7bd21c3a0f6adf1017168bdcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 575,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb73b54d433cc5bb5476da513d903ec2a6eea62d36867f5e2d472c6ae6a4cf5c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77df89e69cf37fb91a06afbb69e180a36f2385a14030c6dbe3aa4d5162c885c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev SeminormedAddCommGroup.ofCoreReplaceUniformity {𝕜 : Type*} {E : Type*} [NormedField 𝕜]
    [AddCommGroup E] [Norm E] [Module 𝕜 E] [U : UniformSpace E]
    (core : SeminormedAddCommGroup.Core 𝕜 E)
    (H : 𝓤[U] = 𝓤[PseudoEMetricSpace.toUniformSpace
      (self := PseudoEMetricSpace.ofSeminormedAddCommGroupCore core)]) :
    SeminormedAddCommGroup E :=
  { PseudoMetricSpace.ofSeminormedAddCommGroupCoreReplaceUniformity core H with }

open Bornology in
/-- Produces a `SeminormedAddCommGroup E` instance from a `SeminormedAddCommGroup.Core` on a type
that already has a preexisting uniform space structure and a preexisting bornology. This requires
proofs that the uniformity induced by the norm is equal to the preexisting uniformity, and likewise
for the bornology. See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c77fe8ce4676de7bd21c3a0f6adf1017168bdcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
