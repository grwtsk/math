# mangoldtL2_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f607483b9fd9a8ccb14d46a0ae50b97582130190",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:716bc277-dadc-907a-eb42-315b07c4d681",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4fd8ce1-29ab-878f-6ec7-6cdbd476625b",
  "kind": "theorem",
  "lexical_name": "mangoldtL2_eq_sum",
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
  "slug": "mangoldtl2-eq-sum--5058d553d18ea015eb88eead",
  "source": {
    "blob": "f607483b9fd9a8ccb14d46a0ae50b97582130190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5058d553d18ea015eb88eead08d1395164513d027f34b68c0b384cb9cec4fcf6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4fd8ce1-29ab-878f-6ec7-6cdbd476625b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mangoldtL2_eq_sum (A : ℝ) (hA : 1 ≤ A) (hp : 0 < A) :
    mangoldtL2 A hA = ∑ m ∈ longInventory A,
      (vonMangoldt m / Real.sqrt (m : ℝ)) • shift A hp (-Real.log (m : ℝ)) := by
  classical
  let c := fun m : ℕ => vonMangoldt m / Real.sqrt (m : ℝ)
  have hc (m : ℕ) : c m • shift A hp (-Real.log (m : ℝ)) =ᵐ[volume]
      fun x => c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ)) := by
    filter_upwards [Lp.coeFn_smul (c m) (shift A hp (-Real.log (m : ℝ))),
      shift_coe A hp (-Real.log (m : ℝ))] with x hs hq
    rw [hs]
    change c m * ((shift A hp (-Real.log (m : ℝ))) x) = _
    rw [hq]
    simp only [sub_eq_add_neg]
  apply Lp.ext
  filter_upwards [(forwardProfile_memLp hp (longInventory A) c).coeFn_toLp,
    Lp.coeFn_fun_finsetSum (longInventory A)
      (fun m => c m • shift A hp (-Real.log (m : ℝ))),
    ((longInventory A).eventually_all).2 (fun m _ => hc m)] with x hf hs hall
  change ((forwardProfile_memLp hp (longInventory A) c).toLp _) x = _
  rw [hf, hs]
  exact Finset.sum_congr rfl (fun m hm => (hall m hm).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f607483b9fd9a8ccb14d46a0ae50b97582130190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
