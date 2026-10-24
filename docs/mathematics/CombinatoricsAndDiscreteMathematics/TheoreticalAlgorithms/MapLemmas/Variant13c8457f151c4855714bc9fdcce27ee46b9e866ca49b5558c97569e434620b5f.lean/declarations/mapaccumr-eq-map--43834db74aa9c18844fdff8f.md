# mapAccumr_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7a83ca-340f-1b34-4b74-3e29343ee4fd",
  "kind": "theorem",
  "lexical_name": "mapAccumr_eq_map",
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
  "slug": "mapaccumr-eq-map--43834db74aa9c18844fdff8f",
  "source": {
    "blob": "a64785ae3e346f08c7649cd87d46a2da91e58d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 256,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43834db74aa9c18844fdff8fefbb27573b91ad4aacc77989c1bd1f7283dbd5e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7a83ca-340f-1b34-4b74-3e29343ee4fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapAccumr_eq_map {f : α → σ → σ × β} {s₀ : σ} (S : Set σ) (h₀ : s₀ ∈ S)
    (closure : ∀ a s, s ∈ S → (f a s).1 ∈ S)
    (out : ∀ a s s', s ∈ S → s' ∈ S → (f a s).2 = (f a s').2) :
    (mapAccumr f xs s₀).snd = map (f · s₀ |>.snd) xs := by
  rw [Vector.map_eq_mapAccumr]
  apply mapAccumr_bisim_tail
  use fun s _ => s ∈ S, h₀
  exact @fun s _q a h => ⟨closure a s h, out a s s₀ h h₀⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant13c8457f151c4855714bc9fdcce27ee46b9e866ca49b5558c97569e434620b5f.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a64785ae3e346f08c7649cd87d46a2da91e58d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
