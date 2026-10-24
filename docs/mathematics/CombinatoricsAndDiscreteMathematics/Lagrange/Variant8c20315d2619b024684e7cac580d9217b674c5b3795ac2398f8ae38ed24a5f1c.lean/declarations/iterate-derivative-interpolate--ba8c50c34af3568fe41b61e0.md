# iterate_derivative_interpolate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ce7a74eea2aa244e90b856c63ff1976d2943728",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d47215d-3171-7050-322d-1e4002c7f52c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d648bdba-00c4-8dda-c934-0c009fd47308",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_interpolate",
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
  "slug": "iterate-derivative-interpolate--ba8c50c34af3568fe41b61e0",
  "source": {
    "blob": "1ce7a74eea2aa244e90b856c63ff1976d2943728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 458,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba8c50c34af3568fe41b61e077c693cbccbdaf7845ece35f7c6ec24870436650",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d648bdba-00c4-8dda-c934-0c009fd47308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_interpolate (hvs : Set.InjOn v s) {k : ℕ} (hk : k < #s) :
    derivative^[k] (interpolate s v r) =
      k.factorial * ∑ i ∈ s, C (r i / ∏ j ∈ s.erase i, (v i - v j)) *
        ∑ t ∈ (s.erase i).powersetCard (#s - (k + 1)), ∏ a ∈ t, (X - C (v a)) := by
  classical
  simp_rw [interpolate_eq_sum, iterate_derivative_sum, iterate_derivative_C_mul, mul_sum s,
    ← mul_assoc, mul_comm (k.factorial : F[X]), mul_assoc]
  congr! 2 with i hi
  have hvs' := hvs.mono (coe_subset.mpr (erase_subset i s))
  calc
    derivative^[k] (∏ j ∈ s.erase i, (X - C (v j))) =
    derivative^[k] (∏ vj ∈ (s.erase i).image v, (X - C vj)) := by rw [Finset.prod_image hvs']
    _ = k.factorial * ∑ t ∈ ((s.erase i).image v).powersetCard (#s - (k + 1)),
          ∏ va ∈ t, (X - C va) := by
        grind [iterate_derivative_prod_X_sub_C]
    _ = k.factorial * ∑ t ∈ (s.erase i).powersetCard (#s - (k + 1)), ∏ a ∈ t, (X - C (v a)) := by
        rw [powersetCard_eq_filter, powerset_image, eq_comm]
        congrm k.factorial * ?_
        refine sum_nbij (·.image v) (fun a ha ↦ ?hi) ?i_inj (fun t ht ↦ ?i_surj) fun a ha ↦ ?h
        case hi => grind [card_image_of_injOn, hvs'.mono]
        case i_inj => exact (image_injOn_powerset_of_injOn hvs').mono (by grind)
        case i_surj => grind [card_image_of_injOn, hvs'.mono]
        case h => exact eq_comm.mp <| prod_image <| by grind [hvs'.mono]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variant8c20315d2619b024684e7cac580d9217b674c5b3795ac2398f8ae38ed24a5f1c.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce7a74eea2aa244e90b856c63ff1976d2943728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
