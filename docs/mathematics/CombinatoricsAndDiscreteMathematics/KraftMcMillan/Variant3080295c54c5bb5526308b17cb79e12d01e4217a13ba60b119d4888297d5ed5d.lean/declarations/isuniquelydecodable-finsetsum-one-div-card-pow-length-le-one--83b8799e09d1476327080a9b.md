# IsUniquelyDecodable.finsetSum_one_div_card_pow_length_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d3f6adf-2ce8-af28-d5cc-4fbd3f000b34",
  "kind": "theorem",
  "lexical_name": "IsUniquelyDecodable.finsetSum_one_div_card_pow_length_le_one",
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
  "slug": "isuniquelydecodable-finsetsum-one-div-card-pow-length-le-one--83b8799e09d1476327080a9b",
  "source": {
    "blob": "9278650f29163c61b2e9c413cfd18700e7c33bae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b8799e09d1476327080a9bef632622b864d1035c6c84c7e5dd4c26993b6804",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d3f6adf-2ce8-af28-d5cc-4fbd3f000b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem IsUniquelyDecodable.finsetSum_one_div_card_pow_length_le_one
    {S : Finset (List α)} [Fintype α] [Nonempty α]
    (h : IsUniquelyDecodable (S : Set (List α))) :
    ∑ w ∈ S, (1 / Fintype.card α : ℝ) ^ w.length ≤ 1 := by
  have h_kraft := kraft_mcmillan_inequality_aux h
  contrapose! h_kraft
  let K := ∑ w ∈ S, (1 / (Fintype.card α : ℝ)) ^ w.length
  let maxLen : ℕ := S.sup List.length
  have hAbs : |1 / K| < 1 := by
    grw [abs_of_pos (by positivity), div_lt_one] <;> grind
  have : Tendsto (fun r : ℕ => r * maxLen / K ^ r) atTop (nhds 0) := by
    simpa [mul_left_comm, mul_div_assoc] using!
      (tendsto_self_mul_const_pow_of_abs_lt_one hAbs).const_mul (maxLen : ℝ)
  obtain ⟨r, hr⟩ := eventually_atTop.mp <| this.eventually <| gt_mem_nhds zero_lt_one
  refine ⟨r + 1, by linarith, ?_⟩
  have := hr (r + 1) (by linarith)
  rw [div_lt_iff₀ (by positivity)] at this
  linarith

@[deprecated (since := "2026-08-16")]
public alias kraft_mcmillan_inequality :=
  IsUniquelyDecodable.finsetSum_one_div_card_pow_length_le_one

end InformationTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9278650f29163c61b2e9c413cfd18700e7c33bae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
