# discrete_iff_cyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b3a3d8f-0312-e05d-59cb-dd9d53681c32",
  "kind": "lemma",
  "lexical_name": "discrete_iff_cyclic",
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
  "slug": "discrete-iff-cyclic--bb24c39c94b2397f69c22321",
  "source": {
    "blob": "be386686d266c130ed132bd4b198870e94bdec7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb24c39c94b2397f69c2232158382a7445f2ec81672eb4fb14b2f72d40f6c525",
  "verification": {
    "reference": "docs/verification/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b3a3d8f-0312-e05d-59cb-dd9d53681c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma discrete_iff_cyclic {H : Subgroup G} : IsCyclic H ↔ DiscreteTopology H := by
  nontriviality G using isCyclic_of_subsingleton, Subsingleton.discreteTopology
  rw [Subgroup.isCyclic_iff_exists_zpowers_eq_top]
  constructor
  · rintro ⟨g, rfl⟩
    infer_instance
  · have := H.dense_or_cyclic
    simp only [← Subgroup.zpowers_eq_closure, Eq.comm (a := H)] at this
    refine fun hA ↦ this.elim (fun h ↦ ?_) id
    -- remains to show a contradiction assuming `H` is both dense and discrete
    obtain rfl : H = ⊤ := by
      rw [← coe_eq_univ, ← (dense_iff_closure_eq.mp h), H.isClosed_of_discreteTopology.closure_eq]
    have : DiscreteTopology G := by rwa [← (Homeomorph.Set.univ G).discreteTopology_iff]
    exact isCyclic_iff_exists_zpowers_eq_top.mp inferInstance

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/ArchimedeanDiscrete/Variant6ebfde480de31fadc34ae8d5fe5f55479e3a312d8c5621ebaf7447a429dfd953.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be386686d266c130ed132bd4b198870e94bdec7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
