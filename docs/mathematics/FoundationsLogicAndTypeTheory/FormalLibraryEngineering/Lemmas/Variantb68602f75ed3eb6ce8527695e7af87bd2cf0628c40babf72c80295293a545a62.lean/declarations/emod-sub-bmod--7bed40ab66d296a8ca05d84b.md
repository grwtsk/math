# emod_sub_bmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2576,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91dda25e-4897-10e9-e787-da9ef5c7b695",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08f6ce52-1712-b20c-883a-b0c89485e0c9",
  "kind": "theorem",
  "lexical_name": "emod_sub_bmod",
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
  "slug": "emod-sub-bmod--7bed40ab66d296a8ca05d84b",
  "source": {
    "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2580,
    "line": 2576,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bed40ab66d296a8ca05d84bd4ddd8ff784eafa8ab64242ffb0e949da1b140b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08f6ce52-1712-b20c-883a-b0c89485e0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2576–2580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emod_sub_bmod (x : Int) (n : Nat) : Int.bmod (x % n - y) n = Int.bmod (x - y) n := by
  simp only [emod_def, Int.sub_eq_add_neg]
  rw [←Int.mul_neg, Int.add_right_comm,  Int.add_mul_bmod_self_left]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean#L2576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ebb630e4fed7809bcfdbf55fb7e74173327aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
