# prod_antilipschitzWith_equiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62192202a71ae5be09376acbbace426de1c7691f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c051eb5-5ab7-1738-0214-027d09556abe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ff59a65-6202-f590-f90c-f4356c7774d5",
  "kind": "theorem",
  "lexical_name": "prod_antilipschitzWith_equiv_aux",
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
  "slug": "prod-antilipschitzwith-equiv-aux--0ce66396631c130d10579d2f",
  "source": {
    "blob": "62192202a71ae5be09376acbbace426de1c7691f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 412,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ce66396631c130d10579d2f60d219f2a896528df8ef501ffac4693b3ab2bbf4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff59a65-6202-f590-f90c-f4356c7774d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_antilipschitzWith_equiv_aux [PseudoEMetricSpace α] [PseudoEMetricSpace β] :
    AntilipschitzWith ((2 : ℝ≥0) ^ (1 / p).toReal) (WithLp.equiv p (α × β)) := by
  intro x y
  rcases p.dichotomy with (rfl | h)
  · simp [edist]
  · have pos : 0 < p.toReal := by positivity
    have nonneg : 0 ≤ 1 / p.toReal := by positivity
    have cancel : p.toReal * (1 / p.toReal) = 1 := mul_div_cancel₀ 1 (ne_of_gt pos)
    rw [prod_edist_eq_add pos, ENNReal.toReal_div 1 p]
    simp only [edist, ← one_div, ENNReal.toReal_one]
    calc
      (edist x.fst y.fst ^ p.toReal + edist x.snd y.snd ^ p.toReal) ^ (1 / p.toReal) ≤
          (edist (WithLp.equiv p _ x) (WithLp.equiv p _ y) ^ p.toReal +
          edist (WithLp.equiv p _ x) (WithLp.equiv p _ y) ^ p.toReal) ^ (1 / p.toReal) := by
        gcongr <;> simp [edist]
      _ = (2 ^ (1 / p.toReal) : ℝ≥0) * edist (WithLp.equiv p _ x) (WithLp.equiv p _ y) := by
        simp only [← two_mul, ENNReal.mul_rpow_of_nonneg _ _ nonneg, ← ENNReal.rpow_mul, cancel,
          ENNReal.rpow_one, ENNReal.coe_rpow_of_nonneg _ nonneg, coe_ofNat]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62192202a71ae5be09376acbbace426de1c7691f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
