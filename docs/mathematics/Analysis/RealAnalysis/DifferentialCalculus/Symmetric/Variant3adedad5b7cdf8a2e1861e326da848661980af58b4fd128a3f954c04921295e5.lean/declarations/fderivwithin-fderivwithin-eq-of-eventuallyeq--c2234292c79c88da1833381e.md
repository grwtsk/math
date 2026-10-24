# fderivWithin_fderivWithin_eq_of_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2cfa503-ed60-f9dd-37c4-3cf178ed9bae",
  "kind": "lemma",
  "lexical_name": "fderivWithin_fderivWithin_eq_of_eventuallyEq",
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
  "slug": "fderivwithin-fderivwithin-eq-of-eventuallyeq--c2234292c79c88da1833381e",
  "source": {
    "blob": "0ffa96c5444b290667206d339dda1cfa7a22d25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2234292c79c88da1833381e22f88c71ee6291d6f542419d803fcab154d5e45d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2cfa503-ed60-f9dd-37c4-3cf178ed9bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fderivWithin_fderivWithin_eq_of_eventuallyEq (h : s =ᶠ[𝓝 x] t) :
    fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x = fderivWithin 𝕜 (fderivWithin 𝕜 f t) t x := calc
  fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x
    = fderivWithin 𝕜 (fderivWithin 𝕜 f t) s x :=
      (fderivWithin_eventually_congr_set h).fderivWithin_eq_of_nhds
  _ = fderivWithin 𝕜 (fderivWithin 𝕜 f t) t x := fderivWithin_congr_set h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant3adedad5b7cdf8a2e1861e326da848661980af58b4fd128a3f954c04921295e5.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ffa96c5444b290667206d339dda1cfa7a22d25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
