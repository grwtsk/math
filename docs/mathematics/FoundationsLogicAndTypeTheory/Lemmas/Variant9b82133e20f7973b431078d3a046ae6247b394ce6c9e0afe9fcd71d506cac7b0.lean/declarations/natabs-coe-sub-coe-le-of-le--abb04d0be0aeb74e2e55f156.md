# natAbs_coe_sub_coe_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "433a8de5ee2e4c0aa5af30cbdd8a8739921bfe76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96c7e058-007f-ae8f-5b67-3c2575912280",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7b61e32-7c94-f172-4f13-9a011d6069fb",
  "kind": "theorem",
  "lexical_name": "natAbs_coe_sub_coe_le_of_le",
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
  "slug": "natabs-coe-sub-coe-le-of-le--abb04d0be0aeb74e2e55f156",
  "source": {
    "blob": "433a8de5ee2e4c0aa5af30cbdd8a8739921bfe76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abb04d0be0aeb74e2e55f156121a229f84ac150d5f433477f12b6966b750007d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b61e32-7c94-f172-4f13-9a011d6069fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_coe_sub_coe_le_of_le {a b n : ℕ} (a_le_n : a ≤ n) (b_le_n : b ≤ n) :
    natAbs (a - b : ℤ) ≤ n := by
  rw [← Nat.cast_le (α := ℤ), natCast_natAbs]
  exact abs_sub_le_of_nonneg_of_le (ofNat_nonneg a) (ofNat_le.mpr a_le_n)
    (ofNat_nonneg b) (ofNat_le.mpr b_le_n)

/-- A specialization of `abs_sub_lt_of_nonneg_of_lt` for working with the signed subtraction
  of natural numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant9b82133e20f7973b431078d3a046ae6247b394ce6c9e0afe9fcd71d506cac7b0.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `433a8de5ee2e4c0aa5af30cbdd8a8739921bfe76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
