# smul_eq_self_of_preimage_zpow_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d22cd062-8235-3f07-1e69-c6dcc0de9db0",
  "kind": "theorem",
  "lexical_name": "smul_eq_self_of_preimage_zpow_eq_self",
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
  "slug": "smul-eq-self-of-preimage-zpow-eq-self--2f3ed5ba600a9458ed5d8abc",
  "source": {
    "blob": "31ec4e5c361670519ba17f0b880c77b308120f0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant5392aeee7c199b50a80af332651551928b4c0f9812bd5a3c7fd9080fece2b0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3ed5ba600a9458ed5d8abc45ec2cbd102b1ef8a95ec77683428ed4dce8305f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant5392aeee7c199b50a80af332651551928b4c0f9812bd5a3c7fd9080fece2b0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d22cd062-8235-3f07-1e69-c6dcc0de9db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_eq_self_of_preimage_zpow_eq_self {G : Type*} [CommGroup G] {n : ℤ} {s : Set G}
    (hs : (fun x => x ^ n) ⁻¹' s = s) {g : G} {j : ℕ} (hg : g ^ n ^ j = 1) : g • s = s := by
  suffices ∀ {g' : G} (_ : g' ^ n ^ j = 1), g' • s ⊆ s by
    refine' le_antisymm (this hg) _
    conv_lhs => rw [← smul_inv_smul g s]
    replace hg : g⁻¹ ^ n ^ j = 1
    · rw [inv_zpow, hg, inv_one]
    simpa only [le_eq_subset, set_smul_subset_set_smul_iff] using this hg
  rw [(IsFixedPt.preimage_iterate hs j : (zpowGroupHom n)^[j] ⁻¹' s = s).symm]
  rintro g' hg' - ⟨y, hy, rfl⟩
  change (zpowGroupHom n)^[j] (g' * y) ∈ s
  replace hg' : (zpowGroupHom n)^[j] g' = 1
  · simpa [zpowGroupHom]
  rwa [iterate_map_mul, hg', one_mul]
#align smul_eq_self_of_preimage_zpow_eq_self smul_eq_self_of_preimage_zpow_eq_self
#align vadd_eq_self_of_preimage_zsmul_eq_self vadd_eq_self_of_preimage_zsmul_eq_self
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant5392aeee7c199b50a80af332651551928b4c0f9812bd5a3c7fd9080fece2b0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant5392aeee7c199b50a80af332651551928b4c0f9812bd5a3c7fd9080fece2b0eb.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ec4e5c361670519ba17f0b880c77b308120f0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
