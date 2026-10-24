# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MulIndicator.Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.Finset.prod_mulIndicator_eq_prod_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c270b07-fe03-2c05-0632-9d40cc0285b5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MulIndicator.Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.Finset.prod_mulIndicator_eq_prod_filter",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-mulindicator-variant2138--04915474323c6ede3d2fbdc4",
  "source": {
    "blob": "0a7667e77700a8454497cf8d9e93f3d7684b2841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 657,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04915474323c6ede3d2fbdc4e6780ddcc617febf9c8a97b894cc2009d2db7396",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c270b07-fe03-2c05-0632-9d40cc0285b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MulIndicator.Variant2138e21a14f1a5c79b98e977a31e9658f75f23e11b1940d6c7c93a6719c63408.Finset.prod_mulIndicator_eq_prod_filter (s : Finset ι) (f : ι → α → M)
    (t : ι → Set α) (g : ι → α) [DecidablePred fun i => g i ∈ t i] :
    (∏ i in s, mulIndicator (t i) (f i) (g i)) = ∏ i in s.filter fun i => g i ∈ t i, f i (g i) := by
  refine' (Finset.prod_filter_mul_prod_filter_not s (fun i => g i ∈ t i) _).symm.trans _
  refine' Eq.trans _ (mul_one _)
  exact
    congr_arg₂ (· * ·)
      (Finset.prod_congr rfl fun x hx => mulIndicator_of_mem (Finset.mem_filter.1 hx).2 _)
      (Finset.prod_eq_one fun x hx => mulIndicator_of_not_mem (Finset.mem_filter.1 hx).2 _)
#align finset.prod_mul_indicator_eq_prod_filter Finset.prod_mulIndicator_eq_prod_filter
#align finset.sum_indicator_eq_sum_filter Finset.sum_indicator_eq_sum_filter

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7667e77700a8454497cf8d9e93f3d7684b2841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
