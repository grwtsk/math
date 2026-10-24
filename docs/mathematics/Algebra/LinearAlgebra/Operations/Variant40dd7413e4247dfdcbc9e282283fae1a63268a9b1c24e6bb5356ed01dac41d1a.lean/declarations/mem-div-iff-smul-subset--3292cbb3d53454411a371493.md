# mem_div_iff_smul_subset

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
      "line": 802,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbc97b4c-6e1d-8d19-1625-9d92282896b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d5609f9-a029-3ae0-f179-de0e28f015f7",
  "kind": "theorem",
  "lexical_name": "mem_div_iff_smul_subset",
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
  "slug": "mem-div-iff-smul-subset--3292cbb3d53454411a371493",
  "source": {
    "blob": "476527349fcea81a613d2bd32b24cd4b442cdb7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 802,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3292cbb3d53454411a371493a9fd3ea5bd9d80235fd5c7aa3829677eb4fa16e2",
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

Occurrence: `result:3d5609f9-a029-3ae0-f179-de0e28f015f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 802–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_div_iff_smul_subset {x : A} {I J : Submodule R A} : x ∈ I / J ↔ x • (J : Set A) ⊆ I :=
  ⟨fun h y ⟨y', hy', xy'_eq_y⟩ => by rw [← xy'_eq_y]; exact h _ hy',
    fun h _ hy => h (Set.smul_mem_smul_set hy)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant40dd7413e4247dfdcbc9e282283fae1a63268a9b1c24e6bb5356ed01dac41d1a.lean#L802).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476527349fcea81a613d2bd32b24cd4b442cdb7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
