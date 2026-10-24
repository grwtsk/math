# ext_isCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c59737f9-6e0c-9d55-d7a5-529451787e3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb68b705-2e35-7eb0-205d-fc231c258619",
  "kind": "lemma",
  "lexical_name": "ext_isCircuit",
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
  "slug": "ext-iscircuit--ebdc26458e0ba22adb5a12a2",
  "source": {
    "blob": "bd9bf31de4a8209bcd163db1349199f94a10c3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebdc26458e0ba22adb5a12a2957dc51fae4149f5da8f0a285f062661ac7f612f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb68b705-2e35-7eb0-205d-fc231c258619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_isCircuit {M₁ M₂ : Matroid α} (hE : M₁.E = M₂.E)
    (h : ∀ ⦃C⦄, C ⊆ M₁.E → (M₁.IsCircuit C ↔ M₂.IsCircuit C)) : M₁ = M₂ := by
  have h' {C} : M₁.IsCircuit C ↔ M₂.IsCircuit C :=
    (em (C ⊆ M₁.E)).elim (h (C := C)) (fun hC ↦ iff_of_false (mt IsCircuit.subset_ground hC)
      (mt IsCircuit.subset_ground fun hss ↦ hC (hss.trans_eq hE.symm)))
  refine ext_indep hE fun I hI ↦ ?_
  simp_rw [indep_iff_forall_subset_not_isCircuit hI, h',
    indep_iff_forall_subset_not_isCircuit (hI.trans_eq hE)]

/-- A stronger version of `Matroid.ext_isCircuit`:
two matroids on the same ground set are equal if no circuit of one is independent in the other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Variantfa3920bc2f0c76eadc840e091d71e94161c2c88acf86dd3ebe1a109a290051b0.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9bf31de4a8209bcd163db1349199f94a10c3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
