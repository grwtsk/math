# smul_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a57cd191fe9b01f59905f30abcc77ae93da45f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baf5691648abc7d62a2ccf0c5b88850a2bb529bc09bad537a33521e54a995350.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:707973c2-655d-13b2-25b8-75a06772f281",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7addb775-cbfb-3bc9-a5c0-748aa571722d",
  "kind": "theorem",
  "lexical_name": "smul_le_of_le",
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
  "slug": "smul-le-of-le--57e6fb526b271a561cd6e5e4",
  "source": {
    "blob": "4a57cd191fe9b01f59905f30abcc77ae93da45f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/Body/Variantbaf5691648abc7d62a2ccf0c5b88850a2bb529bc09bad537a33521e54a995350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e6fb526b271a561cd6e5e48b2f69358ed22daae9369cb06af0893b036e0c2f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Body/Variantbaf5691648abc7d62a2ccf0c5b88850a2bb529bc09bad537a33521e54a995350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7addb775-cbfb-3bc9-a5c0-748aa571722d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_le_of_le (K : ConvexBody V) (h_zero : 0 ∈ K) {a b : ℝ≥0} (h : a ≤ b) :
    a • K ≤ b • K := by
  rw [← SetLike.coe_subset_coe, coe_smul', coe_smul']
  obtain rfl | ha := eq_zero_or_pos a
  · rw [Set.zero_smul_set K.nonempty, Set.zero_subset]
    exact Set.mem_smul_set.mpr ⟨0, h_zero, smul_zero _⟩
  · intro x hx
    obtain ⟨y, hy, rfl⟩ := Set.mem_smul_set.mp hx
    rw [← Set.mem_inv_smul_set_iff₀ ha.ne', smul_smul]
    refine Convex.mem_smul_of_zero_mem K.convex h_zero hy (?_ : 1 ≤ a⁻¹ * b)
    rwa [le_inv_mul_iff₀ ha, mul_one]

variable [ContinuousAdd V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Body/Variantbaf5691648abc7d62a2ccf0c5b88850a2bb529bc09bad537a33521e54a995350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Body/Variantbaf5691648abc7d62a2ccf0c5b88850a2bb529bc09bad537a33521e54a995350.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a57cd191fe9b01f59905f30abcc77ae93da45f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
