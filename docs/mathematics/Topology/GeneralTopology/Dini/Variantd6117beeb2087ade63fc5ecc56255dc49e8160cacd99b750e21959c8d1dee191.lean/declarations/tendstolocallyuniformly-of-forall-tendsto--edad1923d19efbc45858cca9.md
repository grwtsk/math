# tendstoLocallyUniformly_of_forall_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:711f6cd3-51a2-0c83-8b5b-9ffd390f2156",
  "kind": "lemma",
  "lexical_name": "tendstoLocallyUniformly_of_forall_tendsto",
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
  "slug": "tendstolocallyuniformly-of-forall-tendsto--edad1923d19efbc45858cca9",
  "source": {
    "blob": "84b9ba6b122cbdcf801ba17234f6cbd3f3309732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Dini/Variantd6117beeb2087ade63fc5ecc56255dc49e8160cacd99b750e21959c8d1dee191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edad1923d19efbc45858cca987da300282ba1268492bcb9b8f1cb9910462c606",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dini/Variantd6117beeb2087ade63fc5ecc56255dc49e8160cacd99b750e21959c8d1dee191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:711f6cd3-51a2-0c83-8b5b-9ffd390f2156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoLocallyUniformly_of_forall_tendsto
    (hF_cont : ∀ i, Continuous (F i)) (hF_mono : Monotone F) (hf : Continuous f)
    (h_tendsto : ∀ x, Tendsto (F · x) atTop (𝓝 (f x))) :
    TendstoLocallyUniformly F f atTop := by
  refine (atTop : Filter ι).eq_or_neBot.elim (fun h ↦ ?eq_bot) (fun _ ↦ ?_)
  case eq_bot => simp [h, tendstoLocallyUniformly_iff_forall_tendsto]
  have F_le_f (x : α) (n : ι) : F n x ≤ f x := by
    refine _root_.ge_of_tendsto (h_tendsto x) ?_
    filter_upwards [Ici_mem_atTop n] with m hnm
    exact hF_mono hnm x
  simp_rw [Metric.tendstoLocallyUniformly_iff, dist_eq_norm']
  intro ε ε_pos x
  simp_rw +singlePass [tendsto_iff_norm_sub_tendsto_zero] at h_tendsto
  obtain ⟨n, hn⟩ := (h_tendsto x).eventually (eventually_lt_nhds ε_pos) |>.exists
  refine ⟨{y | ‖F n y - f y‖ < ε}, ⟨isOpen_lt (by fun_prop) continuous_const |>.mem_nhds hn, ?_⟩⟩
  filter_upwards [eventually_ge_atTop n] with m hnm z hz
  refine norm_le_norm_of_abs_le_abs ?_ |>.trans_lt hz
  simp only [abs_of_nonpos (sub_nonpos_of_le (F_le_f _ _)), neg_sub, sub_le_sub_iff_left]
  exact hF_mono hnm z

/-- **Dini's theorem**: if `F n` is a monotone increasing collection of continuous functions on a
set `s` converging pointwise to a continuous function `f`, then `F n` converges locally uniformly
to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dini/Variantd6117beeb2087ade63fc5ecc56255dc49e8160cacd99b750e21959c8d1dee191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dini/Variantd6117beeb2087ade63fc5ecc56255dc49e8160cacd99b750e21959c8d1dee191.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b9ba6b122cbdcf801ba17234f6cbd3f3309732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
