# CompactConvergenceCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6faa645539387be14134b015175164d7e972d254891b820440e0bb1581587c54",
  "kind": "abbrev",
  "lexical_name": "CompactConvergenceCLM",
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
  "slug": "compactconvergenceclm--2827d5fb6936ba63110cd927",
  "source": {
    "blob": "855679030c2bc1d1535efad19b4a6804d1d61480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 54,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2827d5fb6936ba63110cd927458f14c5c0aeedee4ce15cfbc6a40a131b90ac8b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6faa645539387be14134b015175164d7e972d254891b820440e0bb1581587c54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev CompactConvergenceCLM [TopologicalSpace E] [TopologicalSpace F] :=
  UniformConvergenceCLM σ F {S : Set E | IsCompact S}

@[inherit_doc]
scoped[CompactConvergenceCLM]
notation:25 E " →SL_c[" σ "] " F => CompactConvergenceCLM σ E F

@[inherit_doc]
scoped[CompactConvergenceCLM]
notation:25 E " →L_c[" R "] " F => CompactConvergenceCLM (RingHom.id R) E F

namespace CompactConvergenceCLM

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant9b9385ae1e05cce0585a974d8cd7d7038e2d1eee0230ed50597996962dd1c38b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855679030c2bc1d1535efad19b4a6804d1d61480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
