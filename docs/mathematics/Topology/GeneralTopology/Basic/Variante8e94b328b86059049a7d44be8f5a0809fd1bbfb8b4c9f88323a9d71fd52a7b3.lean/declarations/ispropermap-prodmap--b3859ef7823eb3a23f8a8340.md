# IsProperMap.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:912cfa27-eed7-51d8-4e2d-98e0a9f52f01",
  "kind": "lemma",
  "lexical_name": "IsProperMap.prodMap",
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
  "slug": "ispropermap-prodmap--b3859ef7823eb3a23f8a8340",
  "source": {
    "blob": "96337d3377ca238edfedb7e53e5dc4ed42a5058d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3859ef7823eb3a23f8a8340621aeffbffd99b1a4e4b294bd8eb93fddee6d719",
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

Occurrence: `result:912cfa27-eed7-51d8-4e2d-98e0a9f52f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProperMap.prodMap {g : Z → W} (hf : IsProperMap f) (hg : IsProperMap g) :
    IsProperMap (Prod.map f g) := by
  simp_rw [isProperMap_iff_ultrafilter] at hf hg ⊢
  constructor
  -- Continuity is clear.
  · exact hf.1.prodMap hg.1
  -- Let `𝒰 : Ultrafilter (X × Z)`, and assume that `f × g` tends to some `(y, w) : Y × W`
  -- along `𝒰`.
  · intro 𝒰 ⟨y, w⟩ hyw
  -- That means that `f` tends to `y` along `map fst 𝒰` and `g` tends to `w` along `map snd 𝒰`.
    simp_rw [nhds_prod_eq, tendsto_prod_iff'] at hyw
  -- Thus, by properness of `f` and `g`, we get some `x : X` and `z : Z` such that `f x = y`,
  -- `g z = w`, `map fst 𝒰` tends to  `x`, and `map snd 𝒰` tends to `y`.
    rcases hf.2 (show Tendsto f (Ultrafilter.map fst 𝒰) (𝓝 y) by simpa using! hyw.1) with
      ⟨x, hxy, hx⟩
    rcases hg.2 (show Tendsto g (Ultrafilter.map snd 𝒰) (𝓝 w) by simpa using! hyw.2) with
      ⟨z, hzw, hz⟩
  -- By the properties of the product topology, that means that `𝒰` tends to `(x, z)`,
  -- which completes the proof since `(f × g)(x, z) = (y, w)`.
    refine ⟨⟨x, z⟩, Prod.ext hxy hzw, ?_⟩
    rw [nhds_prod_eq, le_prod]
    exact ⟨hx, hz⟩

/-- Any product of proper maps is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96337d3377ca238edfedb7e53e5dc4ed42a5058d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
