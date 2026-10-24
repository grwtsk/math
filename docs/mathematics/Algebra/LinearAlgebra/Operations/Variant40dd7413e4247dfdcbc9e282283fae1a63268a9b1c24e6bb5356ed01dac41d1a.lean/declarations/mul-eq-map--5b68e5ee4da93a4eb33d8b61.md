# mul_eq_map₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 393,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:541d94d9-aabd-8a47-8368-1e752adcb07b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7ec4c70-eeb9-eae6-1ef3-095789c7c00e",
  "kind": "theorem",
  "lexical_name": "mul_eq_map₂",
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
  "slug": "mul-eq-map--5b68e5ee4da93a4eb33d8b61",
  "source": {
    "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 393,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b68e5ee4da93a4eb33d8b61e8dd6944a6ea8bcf23667edb833e8d7baa8137a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ec4c70-eeb9-eae6-1ef3-095789c7c00e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_map₂ : M * N = map₂ (LinearMap.mul R A) M N :=
  le_antisymm (mul_le.mpr fun _m hm _n ↦ apply_mem_map₂ _ hm)
    (map₂_le.mpr fun _m hm _n ↦ mul_mem_mul hm)

variable (R M N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476527349fcea81a613d2bd32b24cd4b442cdb7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
