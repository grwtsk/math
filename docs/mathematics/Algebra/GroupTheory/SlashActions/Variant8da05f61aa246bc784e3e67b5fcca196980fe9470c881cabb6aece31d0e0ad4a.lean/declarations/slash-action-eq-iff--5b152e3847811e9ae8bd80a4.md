# slash_action_eq'_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53d4e9514f4526804a39e2ecdae9da07b91d37b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ed2d2f2-bc83-a68a-ad26-e0da26a2358a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c9e9b47-9ff5-522b-2bc2-11631a0db77b",
  "kind": "theorem",
  "lexical_name": "slash_action_eq'_iff",
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
  "slug": "slash-action-eq-iff--5b152e3847811e9ae8bd80a4",
  "source": {
    "blob": "53d4e9514f4526804a39e2ecdae9da07b91d37b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 193,
    "path": "GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b152e3847811e9ae8bd80a4080c36a5c3f137a2bd355c47e4bb775e37f77913",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c9e9b47-9ff5-522b-2bc2-11631a0db77b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem slash_action_eq'_iff (k : ℤ) (Γ : Subgroup SL(2, ℤ)) (f : ℍ → ℂ) (γ : Γ) (z : ℍ) :
    (f ∣[k] γ) z = f z ↔ f (γ • z) = ((↑ₘ[ℤ] γ 1 0 : ℂ) * z + (↑ₘ[ℤ] γ 1 1 : ℂ)) ^ k * f z := by
  simp only [subgroup_slash, slash_def, ModularForm.slash]
  convert inv_mul_eq_iff_eq_mul₀ (G₀ := ℂ) _ using 2
  · rw [mul_comm]
    simp only [denom, zpow_neg, det_coe', ofReal_one, one_zpow, mul_one, subgroup_to_sl_moeb,
      sl_moeb]
    rfl
  · convert zpow_ne_zero k (denom_ne_zero γ z)
#align modular_form.slash_action_eq'_iff ModularForm.slash_action_eq'_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SlashActions/Variant8da05f61aa246bc784e3e67b5fcca196980fe9470c881cabb6aece31d0e0ad4a.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d4e9514f4526804a39e2ecdae9da07b91d37b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
