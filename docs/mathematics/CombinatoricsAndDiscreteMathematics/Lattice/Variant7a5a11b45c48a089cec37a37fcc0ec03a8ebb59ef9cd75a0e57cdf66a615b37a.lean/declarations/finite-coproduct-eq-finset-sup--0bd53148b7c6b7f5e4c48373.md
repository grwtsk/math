# finite_coproduct_eq_finset_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26aa73dca43aed7fe5563d7ab4919d0679e9aa8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5921063c-93c0-4ac9-45b9-844fc01bdc8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dccf5ebb-fd4f-8a2c-2415-c93eb81795c2",
  "kind": "theorem",
  "lexical_name": "finite_coproduct_eq_finset_sup",
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
  "slug": "finite-coproduct-eq-finset-sup--0bd53148b7c6b7f5e4c48373",
  "source": {
    "blob": "26aa73dca43aed7fe5563d7ab4919d0679e9aa8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd53148b7c6b7f5e4c48373adda3ece86948e91363bb7bb00a8e6408cf2e7d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dccf5ebb-fd4f-8a2c-2415-c93eb81795c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_coproduct_eq_finset_sup [SemilatticeSup α] [OrderBot α] {ι : Type u} [Fintype ι]
    (f : ι → α) : ∐ f = Fintype.elems.sup f := by
  trans
  · exact
      (IsColimit.coconePointUniqueUpToIso (colimit.isColimit _)
          (finiteColimitCocone (Discrete.functor f)).isColimit).to_eq
  change Finset.univ.sup (f ∘ discreteEquiv.toEmbedding) = Fintype.elems.sup f
  simp only [← Finset.sup_map, Finset.univ_map_equiv_to_embedding]
  rfl

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant7a5a11b45c48a089cec37a37fcc0ec03a8ebb59ef9cd75a0e57cdf66a615b37a.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26aa73dca43aed7fe5563d7ab4919d0679e9aa8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
