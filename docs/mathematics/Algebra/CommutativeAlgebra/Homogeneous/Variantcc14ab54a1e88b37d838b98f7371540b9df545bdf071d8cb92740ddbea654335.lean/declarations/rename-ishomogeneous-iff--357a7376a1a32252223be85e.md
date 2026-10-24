# rename_isHomogeneous_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a8d265a697df1380a878d12941ddca72d475dd1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90d4ff0c-6904-8e24-0ef4-f3456407b06a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2424555c-3ed5-7996-84b4-0f20b6d3d5c3",
  "kind": "theorem",
  "lexical_name": "rename_isHomogeneous_iff",
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
  "slug": "rename-ishomogeneous-iff--357a7376a1a32252223be85e",
  "source": {
    "blob": "7a8d265a697df1380a878d12941ddca72d475dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 337,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:357a7376a1a32252223be85e499b5641f89616dc656016f4419da998598559e5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2424555c-3ed5-7996-84b4-0f20b6d3d5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_isHomogeneous_iff {f : σ → τ} (hf : f.Injective) :
    (rename f φ).IsHomogeneous n ↔ φ.IsHomogeneous n := by
  refine ⟨fun h d hd ↦ ?_, rename_isHomogeneous⟩
  convert! ← @h (d.mapDomain f) _
  · simp only [weight_apply, Pi.one_apply, smul_eq_mul, mul_one]
    exact Finsupp.sum_mapDomain_index_inj (h := fun _ ↦ id) hf
  · rwa [coeff_rename_mapDomain f hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantcc14ab54a1e88b37d838b98f7371540b9df545bdf071d8cb92740ddbea654335.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8d265a697df1380a878d12941ddca72d475dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
