# exists_mul_le_one_eqOn_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46f7fd440c87cd19a2b853573e2e5fb4c18a86a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35cd0de6-8807-8263-5ff0-261c615d9cdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99a41161-e10c-3308-4b06-72fa115f0778",
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
  "slug": "exists-mul-le-one-eqon-ge--31e96e1b7034e8a8280b2271",
  "source": {
    "blob": "46f7fd440c87cd19a2b853573e2e5fb4c18a86a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e96e1b7034e8a8280b2271592ad6f45262ef8449e91834709c080dc555afcd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99a41161-e10c-3308-4b06-72fa115f0778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mul_le_one_eqOn_ge (f : C(X, ℝ≥0)) {c : ℝ≥0} (hc : 0 < c) :
    ∃ g : C(X, ℝ≥0), (∀ x : X, (g * f) x ≤ 1) ∧ {x : X | c ≤ f x}.EqOn (g * f) 1 :=
  ⟨{  toFun := (f ⊔ const X c)⁻¹
      continuous_toFun :=
        ((map_continuous f).sup <| map_continuous _).inv₀ fun _ => (hc.trans_le le_sup_right).ne' },
    fun x =>
    (inv_mul_le_iff (hc.trans_le le_sup_right)).mpr ((mul_one (f x ⊔ c)).symm ▸ le_sup_left),
    fun x hx => by
    simpa only [coe_const, ge_iff_le, mul_apply, coe_mk, Pi.inv_apply, Pi.sup_apply,
      Function.const_apply, sup_eq_left.mpr (Set.mem_setOf.mp hx), ne_eq, Pi.one_apply]
      using inv_mul_cancel (hc.trans_le hx).ne' ⟩
#align continuous_map.exists_mul_le_one_eq_on_ge ContinuousMap.exists_mul_le_one_eqOn_ge

variable [CompactSpace X] [T2Space X]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46f7fd440c87cd19a2b853573e2e5fb4c18a86a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
