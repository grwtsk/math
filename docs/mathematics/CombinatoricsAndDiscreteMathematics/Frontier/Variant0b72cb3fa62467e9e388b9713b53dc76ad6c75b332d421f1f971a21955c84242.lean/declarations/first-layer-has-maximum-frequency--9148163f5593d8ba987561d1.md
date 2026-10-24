# first_layer_has_maximum_frequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7148014b-ae8b-04ad-76d5-421c3028a5c4",
  "kind": "theorem",
  "lexical_name": "first_layer_has_maximum_frequency",
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
  "slug": "first-layer-has-maximum-frequency--9148163f5593d8ba987561d1",
  "source": {
    "blob": "06a4b293d2fd7a85127c4f61444ae91a2a9e6a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9148163f5593d8ba987561d1ae5dcd2ed6cb854d15412ba4ade7dac7ba96b73f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7148014b-ae8b-04ad-76d5-421c3028a5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_layer_has_maximum_frequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    {nonempty : unresolvedSet.Nonempty}
    {obligation : Obligation}
    (member :
      obligation ∈
        firstFrequencyLayer cut unresolvedSet nonempty) :
    cut.frequency obligation =
      maximumFrequency cut unresolvedSet nonempty :=
  (Finset.mem_filter.mp member).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variant0b72cb3fa62467e9e388b9713b53dc76ad6c75b332d421f1f971a21955c84242.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a4b293d2fd7a85127c4f61444ae91a2a9e6a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
