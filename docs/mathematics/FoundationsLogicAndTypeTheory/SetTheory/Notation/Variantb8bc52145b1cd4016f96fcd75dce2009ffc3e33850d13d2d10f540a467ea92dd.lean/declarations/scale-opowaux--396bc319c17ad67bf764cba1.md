# scale_opowAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 762,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2658a9c-c8fa-abdc-ab2f-6ea7374bacf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12d1124f-4088-994e-7ea2-e103a4d498b2",
  "kind": "theorem",
  "lexical_name": "scale_opowAux",
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
  "slug": "scale-opowaux--396bc319c17ad67bf764cba1",
  "source": {
    "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 762,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396bc319c17ad67bf764cba1bb227c6ca8ce5a41be44a2063ea6dabdf1fab33f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12d1124f-4088-994e-7ea2-e103a4d498b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scale_opowAux (e a0 a : ONote) [NF e] [NF a0] [NF a] :
    ∀ k m, repr (opowAux e a0 a k m) = ω ^ repr e * repr (opowAux 0 a0 a k m)
  | 0, m => by cases m <;> simp [opowAux]
  | k + 1, m => by
    by_cases h : m = 0 <;> simp only [h, opowAux, mulNat_eq_mul, repr_add, repr_scale, repr_mul,
      repr_ofNat, zero_add, mul_add, repr_zero, mul_zero, scale_opowAux e, opow_add, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d332225fdc11aed6ef487342848c15bedf4c12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
