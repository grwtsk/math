# cast_div_of_ne_zero

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
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c394a8e-9fd1-b845-be5d-2e1c9165bb2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f8a3fe2-97a0-a26e-53df-d046d6f26a88",
  "kind": "theorem",
  "lexical_name": "cast_div_of_ne_zero",
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
  "slug": "cast-div-of-ne-zero--ace09277a43f8bf0cd3df2e0",
  "source": {
    "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ace09277a43f8bf0cd3df2e04d2858481638c21a9877402a91b272364fea8164",
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

Occurrence: `result:9f8a3fe2-97a0-a26e-53df-d046d6f26a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_div_of_ne_zero {m n : ℚ} (md : (m.den : α) ≠ 0) (nn : (n.num : α) ≠ 0)
    (nd : (n.den : α) ≠ 0) : ((m / n : ℚ) : α) = m / n := by
  have : (n⁻¹.den : ℤ) ∣ n.num := by
    conv in n⁻¹.den => rw [← @num_den n, inv_def']
    apply den_dvd
  have : (n⁻¹.den : α) = 0 → (n.num : α) = 0 := fun h => by
    let ⟨k, e⟩ := this
    have := congr_arg ((↑) : ℤ → α) e; rwa [Int.cast_mul, Int.cast_ofNat, h, zero_mul] at this
  rw [division_def, cast_mul_of_ne_zero md (mt this nn), cast_inv_of_ne_zero nn nd, division_def]
#align rat.cast_div_of_ne_zero Rat.cast_div_of_ne_zero

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81c8b94feba28f5e25cb0bb38cc6e30f06e3609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
