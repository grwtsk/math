# nhds_basis_Ico_inv_pnat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ad548677fe9a9d4428e01abb4cc497473da230f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77bc5c65-2a4e-fc4e-016c-50301ecd863e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dbdb07b-6cd7-ffe2-9b90-f825b2975814",
  "kind": "theorem",
  "lexical_name": "nhds_basis_Ico_inv_pnat",
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
  "slug": "nhds-basis-ico-inv-pnat--e5afe2b94c499468bd6f9220",
  "source": {
    "blob": "9ad548677fe9a9d4428e01abb4cc497473da230f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5afe2b94c499468bd6f922006e5f7d48da97217dec8b0ecce88139cea0d7634",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dbdb07b-6cd7-ffe2-9b90-f825b2975814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_basis_Ico_inv_pnat (a : ℝₗ) :
    (𝓝 a).HasBasis (fun _ : ℕ+ => True) fun n => Ico a (a + (n : ℝₗ)⁻¹) := by
  refine' (nhds_basis_Ico a).to_hasBasis (fun b hb => _) fun n hn =>
    ⟨_, lt_add_of_pos_right _ (inv_pos.2 <| Nat.cast_pos.2 n.pos), Subset.rfl⟩
  rcases exists_nat_one_div_lt (sub_pos.2 hb) with ⟨k, hk⟩
  rw [one_div] at hk
  rw [← Nat.cast_add_one] at hk
  exact ⟨k.succPNat, trivial, Ico_subset_Ico_right (le_sub_iff_add_le'.1 hk.le)⟩
#align counterexample.sorgenfrey_line.nhds_basis_Ico_inv_pnat Counterexample.SorgenfreyLine.nhds_basis_Ico_inv_pnat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SorgenfreyLine/Variant2f45839ffa87df43833f989fcc3ebe089a6e82b886b891d04e386d6714c8e09e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ad548677fe9a9d4428e01abb4cc497473da230f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
