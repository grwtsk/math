# li.sub_Li

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69f7c39d-371a-bdd5-b929-db24599bef62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97f50dbf-d788-91af-098d-122e8a9f1666",
  "kind": "theorem",
  "lexical_name": "li.sub_Li",
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
  "slug": "li-sub-li--9ed9d630bcc977acc0fbcf94",
  "source": {
    "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 174,
    "path": "GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ed9d630bcc977acc0fbcf94e68293b61da7134d3b62cdfaefd7fc1941822796",
  "verification": {
    "reference": "docs/verification/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f50dbf-d788-91af-098d-122e8a9f1666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem li.sub_Li (x : ℝ) (h2x : 2 ≤ x) : li x - Li x = li 2 := by
  have : Filter.Tendsto (fun ε => ∫ t in Set.Ioc 0 x \ Set.Ioo (1 - ε) (1 + ε), 1 / log t)
      (𝓝[>] 0) (nhds (Li2Bounds.li2_symmetric + Li x)) := by
    apply Filter.Tendsto.congr' (f₁ := fun ε ↦
      (∫ t in (0:ℝ)..(1 - ε), 1 / log t) + (∫ t in (1 + ε)..2, 1 / log t) + Li x)
    · filter_upwards [Ioo_mem_nhdsGT (by linarith : (0 : ℝ) < 1)] with ε hε
      rw [Li2Bounds.setDiff_integral_eq_split ε x hε.1 hε.2 h2x]
      unfold Li
      rw [add_assoc, intervalIntegral.integral_add_adjacent_intervals]
      all_goals
        apply ContinuousOn.intervalIntegrable fun t ht ↦
          ContinuousAt.continuousWithinAt ?_
        rw [Set.uIcc_of_le (by grind)] at ht
        have : log t ≠ 0 := by
          simp only [ne_eq, log_eq_zero]
          grind
        fun_prop (disch := grind)
    · apply Filter.Tendsto.add_const
      apply Li2Bounds.pv_tendsto_li2_symmetric.congr'
      filter_upwards [Ioo_mem_nhdsGT (by linarith : (0 : ℝ) < 1)] with ε hε using
        Li2Bounds.setDiff_integral_eq_split ε 2 hε.1 hε.2 (by rfl)
  have : li x = Li2Bounds.li2_symmetric + Li x :=
    this.limUnder_eq
  rw [this, Li2Bounds.li2_symmetric_eq_li2]
  simp only [add_sub_cancel_right]
  rfl

@[blueprint
  "Ramanujan-Soldner-constant"
  (title := "Ramanujan-Soldner constant")
  (statement := /-- $\li(2) = 1.0451\dots$. -/)
  (proof := /--
    Symmetrize the integral and use and some
    numerical integration. -/)
  (latexEnv := "lemma")
  (discussion := 759)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de27f41e12c834060ee8723d6924d6402f6ec2f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
