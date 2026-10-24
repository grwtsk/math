# StrictConcaveOn.lt_on_openSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58a314d2-b444-5961-6fc1-c35915cdb53b",
  "kind": "theorem",
  "lexical_name": "StrictConcaveOn.lt_on_openSegment",
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
  "slug": "strictconcaveon-lt-on-opensegment--15b674487f1edbf514caef73",
  "source": {
    "blob": "710aeb7d655bc7e9675819cc21837e4de7c9ab09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 666,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15b674487f1edbf514caef73ed30cd530a1323fca528badb74fda10e2f0ae64d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58a314d2-b444-5961-6fc1-c35915cdb53b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConcaveOn.lt_on_openSegment (hf : StrictConcaveOn 𝕜 s f) {x y z : E} (hx : x ∈ s)
    (hy : y ∈ s) (hxy : x ≠ y) (hz : z ∈ openSegment 𝕜 x y) : min (f x) (f y) < f z :=
  hf.dual.lt_on_openSegment hx hy hxy hz

end LinearOrderedAddCommMonoid

section LinearOrderedCancelAddCommMonoid

variable [AddCommMonoid β] [LinearOrder β] [IsOrderedCancelAddMonoid β]

section OrderedSMul

variable [SMul 𝕜 E] [Module 𝕜 β] [OrderedSMul 𝕜 β] {s : Set E} {f g : E → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710aeb7d655bc7e9675819cc21837e4de7c9ab09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
