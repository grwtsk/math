# geometric_hahn_banach_open_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "523e849d38d22f7f2b68d3394e8d4696c4ed96d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1c818b9-327a-b231-934f-f3c193ae2fb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a42bc58-a118-9a1d-cb84-6ea4e7acbfca",
  "kind": "theorem",
  "lexical_name": "geometric_hahn_banach_open_point",
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
  "slug": "geometric-hahn-banach-open-point--7afb830a1dc9abdad1ca6dd0",
  "source": {
    "blob": "523e849d38d22f7f2b68d3394e8d4696c4ed96d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 254,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7afb830a1dc9abdad1ca6dd0d721bc47189e36ca33f411a2dbb6162126485c10",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a42bc58-a118-9a1d-cb84-6ea4e7acbfca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_hahn_banach_open_point (hs₁ : Convex ℝ s) (hs₂ : IsOpen s) (disj : x ∉ s) :
    ∃ f : E →L[𝕜] 𝕜, ∀ a ∈ s, re (f a) < re (f x) := by
  have := IsScalarTower.continuousSMul (M := ℝ) (α := E) 𝕜
  obtain ⟨f, h⟩ := _root_.geometric_hahn_banach_open_point hs₁ hs₂ disj
  use extendTo𝕜'ₗ f
  simp only [re_extendTo𝕜'ₗ]
  exact fun a a_1 ↦ h a a_1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Separation/Variant43fdd0af2b8dc13ec7d2c7ac79a152b5023aa775453b2c8195cd37f49e8ef6f8.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523e849d38d22f7f2b68d3394e8d4696c4ed96d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
