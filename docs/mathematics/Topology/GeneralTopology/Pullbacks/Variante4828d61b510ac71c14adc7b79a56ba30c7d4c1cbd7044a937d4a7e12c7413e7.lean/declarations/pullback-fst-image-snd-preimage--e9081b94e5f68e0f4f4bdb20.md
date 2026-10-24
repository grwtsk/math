# pullback_fst_image_snd_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:328ddfea-5e36-07b8-9c60-1fdfbf6b89c2",
  "kind": "theorem",
  "lexical_name": "pullback_fst_image_snd_preimage",
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
  "slug": "pullback-fst-image-snd-preimage--e9081b94e5f68e0f4f4bdb20",
  "source": {
    "blob": "db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9081b94e5f68e0f4f4bdb20cce43ef7025addaea4593ef77168343bea77dd4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328ddfea-5e36-07b8-9c60-1fdfbf6b89c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_fst_image_snd_preimage (f : X ⟶ Z) (g : Y ⟶ Z) (U : Set Y) :
    (pullback.fst f g) '' ((pullback.snd f g) ⁻¹' U) =
      f ⁻¹' (g '' U) := by
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact
      ⟨(pullback.snd f g) y, hy,
        (CategoryTheory.congr_fun pullback.condition y).symm⟩
  · rintro ⟨y, hy, eq⟩
    -- next 5 lines were
    -- `exact ⟨(TopCat.pullbackIsoProdSubtype f g).inv ⟨⟨_, _⟩, eq.symm⟩, by simpa, by simp⟩`
    -- before https://github.com/leanprover-community/mathlib4/pull/13170
    refine ⟨(TopCat.pullbackIsoProdSubtype f g).inv ⟨⟨_, _⟩, eq.symm⟩, ?_, ?_⟩
    · simp only [coe_of, Set.mem_preimage]
      convert hy
      rw [pullbackIsoProdSubtype_inv_snd_apply]
    · rw [pullbackIsoProdSubtype_inv_fst_apply]

end Pullback

section

variable {X Y : TopCat.{u}} {f g : X ⟶ Y}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
