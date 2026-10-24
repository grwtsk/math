# Real.isTopologicalBasis_Ioo_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f48acf0-ac05-7701-29d4-0d516303d133",
  "kind": "theorem",
  "lexical_name": "Real.isTopologicalBasis_Ioo_rat",
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
  "slug": "real-istopologicalbasis-ioo-rat--8b82daf8310171c1f715ab0f",
  "source": {
    "blob": "5155cf16e699ca4b95ddab6655e085af8f4f7b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b82daf8310171c1f715ab0fb5ee224c01d6aaa169f0a6c49284c86c6de14381",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f48acf0-ac05-7701-29d4-0d516303d133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.isTopologicalBasis_Ioo_rat :
    @IsTopologicalBasis ℝ _ (⋃ (a : ℚ) (b : ℚ) (_ : a < b), {Ioo (a : ℝ) b}) :=
  isTopologicalBasis_of_isOpen_of_nhds (by simp +contextual [isOpen_Ioo])
    fun a _ hav hv =>
    let ⟨_, _, ⟨hl, hu⟩, h⟩ := mem_nhds_iff_exists_Ioo_subset.mp (IsOpen.mem_nhds hv hav)
    let ⟨q, hlq, hqa⟩ := exists_rat_btwn hl
    let ⟨p, hap, hpu⟩ := exists_rat_btwn hu
    ⟨Ioo q p, by
      simp only [mem_iUnion]
      exact ⟨q, p, Rat.cast_lt.1 <| hqa.trans hap, rfl⟩, ⟨hqa, hap⟩, fun _ ⟨hqa', ha'p⟩ =>
      h ⟨hlq.trans hqa', ha'p.trans hpu⟩⟩

/- TODO(Mario): Prove that these are uniform isomorphisms instead of uniform embeddings
lemma uniform_embedding_add_rat {r : ℚ} : uniform_embedding (fun p : ℚ => p + r) :=
_

lemma uniform_embedding_mul_rat {q : ℚ} (hq : q ≠ 0) : uniform_embedding ((*) q) :=
_ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant1ab453cfb42e700061f49463aaf8e4004ddebbfb0d3b375438f6e4c6cc31af7b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5155cf16e699ca4b95ddab6655e085af8f4f7b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
