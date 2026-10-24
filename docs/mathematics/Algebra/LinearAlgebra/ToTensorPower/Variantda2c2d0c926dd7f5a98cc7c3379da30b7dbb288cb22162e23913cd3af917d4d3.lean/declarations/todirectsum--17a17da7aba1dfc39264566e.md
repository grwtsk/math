# toDirectSum_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0680af1130b20a1fdb17cac3f5ed9ddc95a46658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0be1d930-25c5-f4bf-349c-82a3bc67948a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24e21018-9f58-9057-ae49-e2f446fdfb00",
  "kind": "theorem",
  "lexical_name": "toDirectSum_ι",
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
  "slug": "todirectsum--17a17da7aba1dfc39264566e",
  "source": {
    "blob": "0680af1130b20a1fdb17cac3f5ed9ddc95a46658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a17da7aba1dfc39264566eaf003a92e00513f4e0595f4205f910edae8f34aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e21018-9f58-9057-ae49-e2f446fdfb00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDirectSum_ι (x : M) :
    toDirectSum (ι R x) =
      DirectSum.of (fun n => (⨂[R]^n) M) _ (PiTensorProduct.tprod R fun _ : Fin 1 => x) :=
  TensorAlgebra.lift_ι_apply _ _
#align tensor_algebra.to_direct_sum_ι TensorAlgebra.toDirectSum_ι

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0680af1130b20a1fdb17cac3f5ed9ddc95a46658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
