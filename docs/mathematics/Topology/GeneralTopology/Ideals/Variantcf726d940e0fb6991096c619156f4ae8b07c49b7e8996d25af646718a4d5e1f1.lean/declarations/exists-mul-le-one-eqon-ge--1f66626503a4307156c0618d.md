# exists_mul_le_one_eqOn_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8862256e-5521-e9b4-8e5d-ca6e378a447c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b9da683-ca22-f5f2-c531-03d2a83fcc64",
  "kind": "theorem",
  "lexical_name": "exists_mul_le_one_eqOn_ge",
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
  "slug": "exists-mul-le-one-eqon-ge--1f66626503a4307156c0618d",
  "source": {
    "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f66626503a4307156c0618d3e18e2c2ea25977050301ece977d6bb5cfc9d16f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b9da683-ca22-f5f2-c531-03d2a83fcc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mul_le_one_eqOn_ge (f : C(X, ℝ≥0)) {c : ℝ≥0} (hc : 0 < c) :
    ∃ g : C(X, ℝ≥0), (∀ x : X, (g * f) x ≤ 1) ∧ {x : X | c ≤ f x}.EqOn (g * f) 1 :=
  ⟨{  toFun := (f ⊔ const X c)⁻¹
      continuous_toFun :=
        ((map_continuous f).sup <| map_continuous _).inv₀ fun _ => (hc.trans_le le_sup_right).ne' },
    fun x =>
    (inv_mul_le_iff₀ (hc.trans_le le_sup_right)).mpr ((mul_one (f x ⊔ c)).symm ▸ le_sup_left),
    fun x hx => by
    simpa only [coe_const, mul_apply, coe_mk, Pi.inv_apply, Pi.sup_apply,
      Function.const_apply, sup_eq_left.mpr (Set.mem_setOf.mp hx), ne_eq, Pi.one_apply]
      using inv_mul_cancel₀ (hc.trans_le hx).ne' ⟩

variable [CompactSpace X] [T2Space X]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9070af05da546ea5f420110123a6dcf95a8edaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
