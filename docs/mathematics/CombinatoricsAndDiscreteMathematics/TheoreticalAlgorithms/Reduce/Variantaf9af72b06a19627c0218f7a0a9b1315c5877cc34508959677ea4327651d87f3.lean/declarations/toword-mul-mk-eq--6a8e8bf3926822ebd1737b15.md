# toWord_mul_mk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e3a2ccaf5049b2f5f4abe751d2fc18f69e1751b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec7378e6-0e6f-b026-8b09-a04273b67c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf7aa978-9543-d8d7-ece0-f4ed7401fbb9",
  "kind": "theorem",
  "lexical_name": "toWord_mul_mk_eq",
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
  "slug": "toword-mul-mk-eq--6a8e8bf3926822ebd1737b15",
  "source": {
    "blob": "2e3a2ccaf5049b2f5f4abe751d2fc18f69e1751b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 364,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8e8bf3926822ebd1737b15b1328710bfa33e41734f93cc352bee33e1074127",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf7aa978-9543-d8d7-ece0-f4ed7401fbb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toWord_mul_mk_eq (a : α) (b : Bool) (x : FreeGroup α) :
    (x * mk [⟨a, b⟩]).toWord =
      if x.toWord.getLast? = some ⟨a, !b⟩ then x.toWord.dropLast else x.toWord.concat ⟨a, b⟩ := by
  ext
  rw [show x * mk [⟨a, b⟩] = ((mk [⟨a, b⟩])⁻¹ * x⁻¹)⁻¹ by simp, toWord_inv]
  simp [invRev, toWord_mk_mul_eq]
  split_ifs <;> simp <;> grind

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantaf9af72b06a19627c0218f7a0a9b1315c5877cc34508959677ea4327651d87f3.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e3a2ccaf5049b2f5f4abe751d2fc18f69e1751b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
