# isSelfInv_iff_forall_inv_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdc199674ec2e7eb6aa7040204e8d5face34fe63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46b2dbb0-710e-667b-b702-67e397b862e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4eff81f6-4a99-a51a-107b-0fa24f89cb17",
  "kind": "lemma",
  "lexical_name": "isSelfInv_iff_forall_inv_mem",
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
  "slug": "isselfinv-iff-forall-inv-mem--519a58fb2930d15dcd8b253d",
  "source": {
    "blob": "fdc199674ec2e7eb6aa7040204e8d5face34fe63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 106,
    "path": "GRWTSK/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:519a58fb2930d15dcd8b253d2d27aad4ae203ecb9685164b77baed4d0c4e9f41",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eff81f6-4a99-a51a-107b-0fa24f89cb17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSelfInv_iff_forall_inv_mem : IsSelfInv s ↔ ∀ ⦃x⦄, x ∈ s → x⁻¹ ∈ s := by
  rw [isSelfInv_iff_forall_inv_mem_iff]
  exact ⟨fun h x hx ↦ (h x).2 hx, fun h x ↦ ⟨fun hx ↦ inv_inv x ▸ h hx, @h x⟩⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfInv/Variant5d741aebaf809bff5e6b7f8fc665543d3c307ee05b0c436c1eb98f757c7b2320.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc199674ec2e7eb6aa7040204e8d5face34fe63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
