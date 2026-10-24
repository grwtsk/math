# prodPseudoMetricAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f57a3aef473ac91c8642e51ab9ef376f737e0a27544a6df6e632b8339b5e6bf",
  "kind": "abbrev",
  "lexical_name": "prodPseudoMetricAux",
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
  "slug": "prodpseudometricaux--1b071350e394fc2844f46807",
  "source": {
    "blob": "62192202a71ae5be09376acbbace426de1c7691f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 352,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b071350e394fc2844f468072e6adedefbe2cabb4fa53d4a08e7871632c9ff79",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f57a3aef473ac91c8642e51ab9ef376f737e0a27544a6df6e632b8339b5e6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev prodPseudoMetricAux [PseudoMetricSpace α] [PseudoMetricSpace β] :
    PseudoMetricSpace (WithLp p (α × β)) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist dist
    (fun f g => by
      rcases p.dichotomy with (rfl | h)
      · exact prod_sup_edist_ne_top_aux f g
      · rw [prod_edist_eq_add (zero_lt_one.trans_le h)]
        refine ENNReal.rpow_ne_top_of_nonneg (by positivity) (ne_of_lt ?_)
        simp [ENNReal.add_lt_top, ENNReal.rpow_lt_top_of_nonneg, edist_ne_top] )
    fun f g => by
    rcases p.dichotomy with (rfl | h)
    · rw [prod_edist_eq_sup, prod_dist_eq_sup]
      refine le_antisymm (sup_le ?_ ?_) ?_
      · rw [← ENNReal.ofReal_le_iff_le_toReal (prod_sup_edist_ne_top_aux f g),
          ← PseudoMetricSpace.edist_dist]
        exact le_sup_left
      · rw [← ENNReal.ofReal_le_iff_le_toReal (prod_sup_edist_ne_top_aux f g),
          ← PseudoMetricSpace.edist_dist]
        exact le_sup_right
      · refine ENNReal.toReal_le_of_le_ofReal ?_ ?_
        · simp only [le_sup_iff, dist_nonneg, or_self]
        · simp [edist, PseudoMetricSpace.edist_dist, ENNReal.ofReal_le_ofReal]
    · have h1 : edist f.fst g.fst ^ p.toReal ≠ ⊤ :=
        ENNReal.rpow_ne_top_of_nonneg (zero_le_one.trans h) (edist_ne_top _ _)
      have h2 : edist f.snd g.snd ^ p.toReal ≠ ⊤ :=
        ENNReal.rpow_ne_top_of_nonneg (zero_le_one.trans h) (edist_ne_top _ _)
      simp only [prod_edist_eq_add (zero_lt_one.trans_le h), dist_edist, ENNReal.toReal_rpow,
        prod_dist_eq_add (zero_lt_one.trans_le h), ← ENNReal.toReal_add h1 h2]

attribute [local instance] WithLp.prodPseudoMetricAux

variable {α β} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Varianted59a1f9d646c926df802672303017b76ed5c09145f9173374ef7091a5483607.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62192202a71ae5be09376acbbace426de1c7691f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
