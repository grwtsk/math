# tendsto_log_one_sub_sq_div_sq

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
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:450202db-22c7-8c03-729e-3b5bc49cb002",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff414b46-7892-17ad-f764-257f29574783",
  "kind": "theorem",
  "lexical_name": "tendsto_log_one_sub_sq_div_sq",
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
  "slug": "tendsto-log-one-sub-sq-div-sq--fe9347445851efd804801fdf",
  "source": {
    "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 385,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe9347445851efd804801fdf14734110fc6ffb00cc681ecc9b0d22fcc272f63c",
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

Occurrence: `result:ff414b46-7892-17ad-f764-257f29574783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_log_one_sub_sq_div_sq :
    Filter.Tendsto (fun t => log (1 - t^2) / t^2) (nhdsWithin 0 (Set.Ioi 0)) (nhds (-1)) := by
  have h := tendsto_log_one_sub_div_self
  have hsq : Filter.Tendsto (fun t : ℝ => t^2) (nhdsWithin 0 (Set.Ioi 0)) (nhdsWithin 0 (Set.Ioi 0)) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within
    · have h0 : Filter.Tendsto (fun t : ℝ => t) (nhdsWithin (0 : ℝ) (Set.Ioi 0)) (nhds 0) :=
        (continuous_id.tendsto 0).mono_left nhdsWithin_le_nhds
      simp only [sq]
      have hmul := h0.mul h0
      simp only [mul_zero] at hmul
      exact hmul
    · filter_upwards [self_mem_nhdsWithin] with t ht
      exact sq_pos_of_pos (Set.mem_Ioi.mp ht)
  exact h.comp hsq

/-- The symmetric combination approaches 1 as t → 0⁺.
    More precisely: g(t) → 1 as t → 0⁺.

    **Proof:** Rewrite g(t) using the alternative form:
      g(t) = log(1-t²)/(log(1+t)·log(1-t))
           = [log(1-t²)/t²] / [(log(1+t)/t) · (log(1-t)/t)]
    As t → 0⁺:
      - log(1-t²)/t² → -1
      - log(1+t)/t → 1
      - log(1-t)/t → -1
    So g(t) → (-1) / (1 · (-1)) = 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59dbf7f90a4d6c695870594f016290bb019366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
