# cast_inv_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7429207-a2dd-cd56-8fda-94948d3d44f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9712eb06-24d4-ca49-0610-79c8f5ff7823",
  "kind": "theorem",
  "lexical_name": "cast_inv_nat",
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
  "slug": "cast-inv-nat--60bd411f8480b2bce048ed18",
  "source": {
    "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60bd411f8480b2bce048ed187225a8e71b769b6eddfee9ca9f64d8d13edce1a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9712eb06-24d4-ca49-0610-79c8f5ff7823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_inv_nat (n : ℕ) : ((n⁻¹ : ℚ) : α) = (n : α)⁻¹ := by
  cases' n with n
  · simp
  rw [cast_def, inv_coe_nat_num, inv_coe_nat_den, if_neg n.succ_ne_zero,
    Int.sign_eq_one_of_pos (Nat.cast_pos.mpr n.succ_pos), Int.cast_one, one_div]
#align rat.cast_inv_nat Rat.cast_inv_nat

-- Porting note: proof got a lot easier - is this still the intended statement?
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81c8b94feba28f5e25cb0bb38cc6e30f06e3609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
