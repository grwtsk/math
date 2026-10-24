# edist_proj_le_edist_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ff43a7387a1337681de02a6dc85d5987fa3d40d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61a1f2f2-9a88-cf22-8864-5e30c16d1d60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b94b66c5-5e02-0c3a-4775-cdb2ac43c2e9",
  "kind": "theorem",
  "lexical_name": "edist_proj_le_edist_aux",
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
  "slug": "edist-proj-le-edist-aux--49d002b75f324a2e445ba655",
  "source": {
    "blob": "4ff43a7387a1337681de02a6dc85d5987fa3d40d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 400,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49d002b75f324a2e445ba655861cabe203a7743dfc8e6f6754ef325d71cad686",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94b66c5-5e02-0c3a-4775-cdb2ac43c2e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edist_proj_le_edist_aux [PseudoEMetricSpace α] [PseudoEMetricSpace β]
    (x y : WithLp p (α × β)) :
    edist x.fst y.fst ≤ edist x y ∧ edist x.snd y.snd ≤ edist x y := by
  rcases p.dichotomy with (rfl | h)
  · simp [prod_edist_eq_sup]
  · have cancel : p.toReal * (1 / p.toReal) = 1 := mul_div_cancel₀ 1 (zero_lt_one.trans_le h).ne'
    rw [prod_edist_eq_add (zero_lt_one.trans_le h)]
    constructor
    · calc
        edist x.fst y.fst ≤ (edist x.fst y.fst ^ p.toReal) ^ (1 / p.toReal) := by
          simp only [← ENNReal.rpow_mul, cancel, ENNReal.rpow_one, le_refl]
        _ ≤ (edist x.fst y.fst ^ p.toReal + edist x.snd y.snd ^ p.toReal) ^ (1 / p.toReal) := by
          gcongr
          simp only [self_le_add_right]
    · calc
        edist x.snd y.snd ≤ (edist x.snd y.snd ^ p.toReal) ^ (1 / p.toReal) := by
          simp only [← ENNReal.rpow_mul, cancel, ENNReal.rpow_one, le_refl]
        _ ≤ (edist x.fst y.fst ^ p.toReal + edist x.snd y.snd ^ p.toReal) ^ (1 / p.toReal) := by
          gcongr
          simp only [self_le_add_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant80251314b56df55f4189522b12eedac1e61de829dffd85c0cb71f2e3ee833939.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff43a7387a1337681de02a6dc85d5987fa3d40d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
