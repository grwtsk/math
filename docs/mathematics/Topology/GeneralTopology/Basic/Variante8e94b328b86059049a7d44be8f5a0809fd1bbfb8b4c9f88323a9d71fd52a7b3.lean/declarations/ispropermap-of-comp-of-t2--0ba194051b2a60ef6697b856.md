# isProperMap_of_comp_of_t2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c66bf14e-a8a3-e8a7-0756-461c8530506a",
  "kind": "lemma",
  "lexical_name": "isProperMap_of_comp_of_t2",
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
  "slug": "ispropermap-of-comp-of-t2--0ba194051b2a60ef6697b856",
  "source": {
    "blob": "96337d3377ca238edfedb7e53e5dc4ed42a5058d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba194051b2a60ef6697b8560c444fa410766b5dbc4b0b301c42aeb40261ee69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c66bf14e-a8a3-e8a7-0756-461c8530506a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isProperMap_of_comp_of_t2 [T2Space Y] (hf : Continuous f) (hg : Continuous g)
    (hgf : IsProperMap (g ∘ f)) : IsProperMap f := by
  rw [isProperMap_iff_ultrafilter_of_t2]
  refine ⟨hf, fun 𝒰 y h ↦ ?_⟩
  rw [isProperMap_iff_ultrafilter] at hgf
  rcases hgf.2 ((hg.tendsto y).comp h) with ⟨x, -, hx⟩
  exact ⟨x, hx⟩

/-- A binary product of proper maps is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96337d3377ca238edfedb7e53e5dc4ed42a5058d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
