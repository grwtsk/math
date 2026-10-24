# Filter.EventuallyEq.fderivWithin_eq_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1fc6be9-042f-a35c-8804-c7c80f43ddad",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.fderivWithin_eq_nhds",
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
  "slug": "filter-eventuallyeq-fderivwithin-eq-nhds--2f3ceb65959ec46b9a256187",
  "source": {
    "blob": "0d82a69d68f8d557c107f7784f8dc4fb35378222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 973,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5ea41cc29cf7cd589d9e249a368eeb5ceb02be09710d505a5a59bb540d7bf8bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3ceb65959ec46b9a256187ed52e7fcf0684e40283f5e54797218fc0a8fbaa5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5ea41cc29cf7cd589d9e249a368eeb5ceb02be09710d505a5a59bb540d7bf8bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1fc6be9-042f-a35c-8804-c7c80f43ddad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.fderivWithin_eq_nhds (h : f₁ =ᶠ[𝓝 x] f) :
    fderivWithin 𝕜 f₁ s x = fderivWithin 𝕜 f s x :=
  (h.filter_mono nhdsWithin_le_nhds).fderivWithin_eq h.self_of_nhds
#align filter.eventually_eq.fderiv_within_eq_nhds Filter.EventuallyEq.fderivWithin_eq_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5ea41cc29cf7cd589d9e249a368eeb5ceb02be09710d505a5a59bb540d7bf8bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant5ea41cc29cf7cd589d9e249a368eeb5ceb02be09710d505a5a59bb540d7bf8bd.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d82a69d68f8d557c107f7784f8dc4fb35378222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
