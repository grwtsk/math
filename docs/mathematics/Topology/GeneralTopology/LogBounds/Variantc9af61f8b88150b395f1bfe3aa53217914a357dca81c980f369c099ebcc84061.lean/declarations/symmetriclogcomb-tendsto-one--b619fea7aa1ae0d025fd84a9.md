# symmetricLogComb_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e625e7b7-a48f-87b5-8ca5-28f8ff42799d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2521b59e-1e19-2405-4f96-5dbac7ab0572",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_tendsto_one",
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
  "slug": "symmetriclogcomb-tendsto-one--b619fea7aa1ae0d025fd84a9",
  "source": {
    "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b619fea7aa1ae0d025fd84a9f0378b9f49a1d6c08779e1cc80a5c6c7e2c90dd8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2521b59e-1e19-2405-4f96-5dbac7ab0572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_tendsto_one :
    Filter.Tendsto symmetricLogComb (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
  -- Use the alternative form for t ∈ (0, 1)
  have heventually : ∀ᶠ t in nhdsWithin 0 (Set.Ioi 0), symmetricLogComb t =
      log (1 - t^2) / (log (1 + t) * log (1 - t)) := by
    rw [Filter.eventually_iff_exists_mem]
    use Set.Ioo 0 1
    constructor
    · rw [mem_nhdsWithin]
      use Set.Iio 1
      refine ⟨isOpen_Iio, ?_, ?_⟩
      · norm_num
      · intro x ⟨hx1, hx2⟩
        exact ⟨hx2, hx1⟩
    · intro t ht
      exact symmetricLogComb_alt t ht.1 ht.2
  apply Filter.Tendsto.congr' (Filter.EventuallyEq.symm heventually)
  -- Rewrite as ratio: [log(1-t²)/t²] / [(log(1+t)/t) · (log(1-t)/t)]
  have hrewrite : ∀ᶠ t in nhdsWithin 0 (Set.Ioi 0),
      log (1 - t^2) / (log (1 + t) * log (1 - t)) =
      (log (1 - t^2) / t^2) / ((log (1 + t) / t) * (log (1 - t) / t)) := by
    filter_upwards [self_mem_nhdsWithin] with t ht
    have ht_ne : t ≠ 0 := ne_of_gt ht
    field_simp
  apply Filter.Tendsto.congr' (Filter.EventuallyEq.symm hrewrite)
  -- Apply the limits
  have h1 := tendsto_log_one_sub_sq_div_sq  -- log(1-t²)/t² → -1
  have h2 := tendsto_log_one_add_div_self   -- log(1+t)/t → 1
  have h3 := tendsto_log_one_sub_div_self   -- log(1-t)/t → -1
  -- The product (log(1+t)/t) * (log(1-t)/t) → 1 * (-1) = -1
  have hprod : Filter.Tendsto (fun t => (log (1 + t) / t) * (log (1 - t) / t))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds (-1)) := by
    have := h2.mul h3
    simp only [one_mul] at this
    exact this
  -- The ratio (-1) / (-1) = 1
  have hdiv : Filter.Tendsto (fun t => (log (1 - t^2) / t^2) /
      ((log (1 + t) / t) * (log (1 - t) / t)))
      (nhdsWithin 0 (Set.Ioi 0)) (nhds 1) := by
    have hne : (-1 : ℝ) ≠ 0 := by norm_num
    have := h1.div hprod hne
    simp only [neg_div_neg_eq] at this
    convert this using 1
    norm_num
  exact hdiv

end LeanCert.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59dbf7f90a4d6c695870594f016290bb019366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
