# ConcaveOn.sub_strictConvexOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61377a88-3550-2442-fdc8-2f84df18414a",
  "kind": "theorem",
  "lexical_name": "ConcaveOn.sub_strictConvexOn",
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
  "slug": "concaveon-sub-strictconvexon--6694d23f79957e19c0994165",
  "source": {
    "blob": "710aeb7d655bc7e9675819cc21837e4de7c9ab09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 852,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6694d23f79957e19c09941659518d79669c6171e3570b41e317faf71cee46e70",
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

Occurrence: `result:61377a88-3550-2442-fdc8-2f84df18414a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 852–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConcaveOn.sub_strictConvexOn (hf : ConcaveOn 𝕜 s f) (hg : StrictConvexOn 𝕜 s g) :
    StrictConcaveOn 𝕜 s (f - g) :=
  (sub_eq_add_neg f g).symm ▸ hf.add_strictConcaveOn hg.neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variant0d7cdf6d44f21bb965c728d1b121c7588a3eed3ce8a2d0123502d50bf50f9724.lean#L852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `710aeb7d655bc7e9675819cc21837e4de7c9ab09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
