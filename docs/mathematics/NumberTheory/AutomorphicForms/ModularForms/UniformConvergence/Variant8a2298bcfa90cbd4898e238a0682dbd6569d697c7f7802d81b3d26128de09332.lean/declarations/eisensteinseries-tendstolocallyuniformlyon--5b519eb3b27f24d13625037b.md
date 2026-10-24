# eisensteinSeries_tendstoLocallyUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e90df712-4fcb-6f10-2c03-43e7be7ee748",
  "kind": "lemma",
  "lexical_name": "eisensteinSeries_tendstoLocallyUniformlyOn",
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
  "slug": "eisensteinseries-tendstolocallyuniformlyon--5b519eb3b27f24d13625037b",
  "source": {
    "blob": "f8f2c11e167477ed5a48678c5acf6e98eac293db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b519eb3b27f24d13625037b37693af6ba4da813ef3dc92f739d01fd351a8e70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90df712-4fcb-6f10-2c03-43e7be7ee748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eisensteinSeries_tendstoLocallyUniformlyOn {k : ℤ} {N : ℕ} (hk : 3 ≤ k)
    (a : Fin 2 → ZMod N) : TendstoLocallyUniformlyOn (fun (s : Finset (gammaSet N a )) ↦
      ↑ₕ(fun (z : ℍ) ↦ ∑ x ∈ s, eisSummand k x z)) (↑ₕ(eisensteinSeries_SIF a k).toFun)
          Filter.atTop {z : ℂ | 0 < z.im} := by
  rw [← Subtype.coe_image_univ {z : ℂ | 0 < z.im}]
  apply TendstoLocallyUniformlyOn.comp (s := ⊤) _ _ _ (PartialHomeomorph.continuousOn_symm _)
  · simp only [SlashInvariantForm.toFun_eq_coe, Set.top_eq_univ, tendstoLocallyUniformlyOn_univ]
    apply eisensteinSeries_tendstoLocallyUniformly hk
  · simp only [IsOpenEmbedding.toPartialHomeomorph_target, Set.top_eq_univ, mapsTo_range_iff,
    Set.mem_univ, forall_const]

end summability

end EisensteinSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variant8a2298bcfa90cbd4898e238a0682dbd6569d697c7f7802d81b3d26128de09332.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f2c11e167477ed5a48678c5acf6e98eac293db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
