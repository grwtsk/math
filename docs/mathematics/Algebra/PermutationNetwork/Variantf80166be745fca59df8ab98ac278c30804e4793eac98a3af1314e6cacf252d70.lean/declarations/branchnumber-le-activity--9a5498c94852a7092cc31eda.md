# branchNumber_le_activity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15e69c19cc6fc5ac33d59fcbfa154ba4a659158b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8768d296-0d72-3761-443d-8ad1f0794b1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28ae9e87-4b27-4cea-4d03-cc3684e24450",
  "kind": "theorem",
  "lexical_name": "branchNumber_le_activity",
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
  "slug": "branchnumber-le-activity--9a5498c94852a7092cc31eda",
  "source": {
    "blob": "15e69c19cc6fc5ac33d59fcbfa154ba4a659158b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 334,
    "path": "GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a5498c94852a7092cc31eda153be61a7c96eed98d6c9b99196a85854421f95f",
  "verification": {
    "reference": "docs/verification/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ae9e87-4b27-4cea-4d03-cc3684e24450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem branchNumber_le_activity {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) {v : Bits n} (hv : v ≠ zeroBits n) :
    branchNumber L ≤ hammingWeight v + hammingWeight (L.toFun v) := by
  classical
  rw [branchNumber, dif_neg (Nat.ne_of_gt hn)]
  apply Finset.min'_le
  exact Finset.mem_image.mpr ⟨v, by simp [hv], rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15e69c19cc6fc5ac33d59fcbfa154ba4a659158b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
