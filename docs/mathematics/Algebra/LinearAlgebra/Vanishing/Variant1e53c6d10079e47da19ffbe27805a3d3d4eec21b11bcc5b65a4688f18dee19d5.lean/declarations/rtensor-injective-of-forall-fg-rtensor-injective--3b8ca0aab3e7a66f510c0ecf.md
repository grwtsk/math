# rTensor_injective_of_forall_fg_rTensor_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0ce640eb4dcf77190582aca9fe4c9190cf7ab31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6041b06b-5eed-2cc5-3d99-dc21e944ed5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:734f3453-17d3-7aac-317f-281c2da63723",
  "kind": "theorem",
  "lexical_name": "rTensor_injective_of_forall_fg_rTensor_injective",
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
  "slug": "rtensor-injective-of-forall-fg-rtensor-injective--3b8ca0aab3e7a66f510c0ecf",
  "source": {
    "blob": "c0ce640eb4dcf77190582aca9fe4c9190cf7ab31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 275,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8ca0aab3e7a66f510c0ecf089a8536c5f3185a0caee525cb5a892dccfcd5a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:734f3453-17d3-7aac-317f-281c2da63723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rTensor_injective_of_forall_fg_rTensor_injective
    (hMN : ∀ (M' : Submodule R M) (_ : M'.FG), Injective (rTensor N M'.subtype))
    (M' : Submodule R M) : Injective (rTensor N M'.subtype) :=
  (forall_vanishesTrivially_iff_forall_rTensor_injective R).mp
    ((forall_vanishesTrivially_iff_forall_fg_rTensor_injective R).mpr hMN) M'

end TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ce640eb4dcf77190582aca9fe4c9190cf7ab31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
