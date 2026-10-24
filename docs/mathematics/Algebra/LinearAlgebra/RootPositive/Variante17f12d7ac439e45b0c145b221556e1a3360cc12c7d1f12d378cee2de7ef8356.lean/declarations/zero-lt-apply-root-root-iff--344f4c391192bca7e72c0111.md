# zero_lt_apply_root_root_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9710b3d190009e8fb3cc4c4061e50105954f963",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97308efd-09e9-4dc5-a3af-c9c2e1a62530",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e93a973d-f8b7-312f-1218-7ecb325af51d",
  "kind": "lemma",
  "lexical_name": "zero_lt_apply_root_root_iff",
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
  "slug": "zero-lt-apply-root-root-iff--344f4c391192bca7e72c0111",
  "source": {
    "blob": "d9710b3d190009e8fb3cc4c4061e50105954f963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 199,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344f4c391192bca7e72c0111a6d4fb3d1ce0b33fcbd0b6e2c1673355f2c69c6e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e93a973d-f8b7-312f-1218-7ecb325af51d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_lt_apply_root_root_iff [IsStrictOrderedRing S]
    (hi : P.root i ∈ span S (range P.root) := subset_span (mem_range_self i))
    (hj : P.root j ∈ span S (range P.root) := subset_span (mem_range_self j)) :
    0 < B.posForm ⟨P.root i, hi⟩ ⟨P.root j, hj⟩ ↔ 0 < P.pairingIn S i j := by
  let ri : span S (range P.root) := ⟨P.root i, hi⟩
  let rj : span S (range P.root) := ⟨P.root j, hj⟩
  have : 2 * B.posForm ri rj = P.pairingIn S i j * B.posForm rj rj := by
    apply FaithfulSMul.algebraMap_injective S R
    simpa [map_ofNat] using B.toInvariantForm.two_mul_apply_root_root i j
  calc  0 < B.posForm ri rj
      ↔ 0 < 2 * B.posForm ri rj := by rw [mul_pos_iff_of_pos_left zero_lt_two]
    _ ↔ 0 < P.pairingIn S i j * B.posForm rj rj := by rw [this]
    _ ↔ 0 < P.pairingIn S i j := by rw [mul_pos_iff_of_pos_right (B.zero_lt_posForm_apply_root j)]

end RootPositiveForm

include B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootPositive/Variante17f12d7ac439e45b0c145b221556e1a3360cc12c7d1f12d378cee2de7ef8356.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9710b3d190009e8fb3cc4c4061e50105954f963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
