# HashesTo.containsKey_eq_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0aa47ab-bb99-b44a-15dd-6070d1b56076",
  "kind": "theorem",
  "lexical_name": "HashesTo.containsKey_eq_false",
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
  "slug": "hashesto-containskey-eq-false--32655a664ddecb7239c8eba8",
  "source": {
    "blob": "7bd3f8e0ccc9be6fd67536284a6bf2e0f981a650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashesTo/Variantdccc3908f9c4bd01c80efdc57d40dcab1403692bd3442044316880aaf752e798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32655a664ddecb7239c8eba8d12e0e0fc5761ffb54b2096f747c6e7dfd541e26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashesTo/Variantdccc3908f9c4bd01c80efdc57d40dcab1403692bd3442044316880aaf752e798.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0aa47ab-bb99-b44a-15dd-6070d1b56076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HashesTo.containsKey_eq_false [BEq α] [Hashable α] [LawfulHashable α]
    {l : List ((a : α) × β a)} {i : Nat} {size : Nat} (hs : 0 < size) (h : HashesTo l i size)
    (k : α) : (mkIdx size hs (hash k)).1.toNat ≠ i → containsKey k l = false := by
  rw [← Decidable.not_imp_not]
  simp only [Bool.not_eq_false, containsKey_eq_true_iff_exists_mem]
  rintro ⟨⟨k', v⟩, hmem, heq⟩
  simp [← h.hash_self hs _ hmem, hash_eq heq]

end Std.DHashMap.Internal.List
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashesTo/Variantdccc3908f9c4bd01c80efdc57d40dcab1403692bd3442044316880aaf752e798.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashesTo/Variantdccc3908f9c4bd01c80efdc57d40dcab1403692bd3442044316880aaf752e798.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd3f8e0ccc9be6fd67536284a6bf2e0f981a650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
