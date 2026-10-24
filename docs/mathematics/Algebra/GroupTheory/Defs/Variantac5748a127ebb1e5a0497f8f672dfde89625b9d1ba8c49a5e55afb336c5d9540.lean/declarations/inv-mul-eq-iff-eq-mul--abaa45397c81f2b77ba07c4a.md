# inv_mul_eq_iff_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a89b901ada411cb87300dff3c817f75fe6a62fa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac5748a127ebb1e5a0497f8f672dfde89625b9d1ba8c49a5e55afb336c5d9540.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b73b05d8-eeea-2a53-ac3f-5db60f4e461f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77c5bd33-8762-b9d1-0d29-96e0487d0cfd",
  "kind": "theorem",
  "lexical_name": "inv_mul_eq_iff_eq_mul",
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
  "slug": "inv-mul-eq-iff-eq-mul--abaa45397c81f2b77ba07c4a",
  "source": {
    "blob": "a89b901ada411cb87300dff3c817f75fe6a62fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 214,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantac5748a127ebb1e5a0497f8f672dfde89625b9d1ba8c49a5e55afb336c5d9540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abaa45397c81f2b77ba07c4a74553d4ad6603411f444b806e7b1195a904e810e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantac5748a127ebb1e5a0497f8f672dfde89625b9d1ba8c49a5e55afb336c5d9540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77c5bd33-8762-b9d1-0d29-96e0487d0cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_mul_eq_iff_eq_mul {b c : α} : ↑a⁻¹ * b = c ↔ b = a * c :=
  ⟨fun h => by rw [← h, mul_inv_cancel_left], fun h => by rw [h, inv_mul_cancel_left]⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantac5748a127ebb1e5a0497f8f672dfde89625b9d1ba8c49a5e55afb336c5d9540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantac5748a127ebb1e5a0497f8f672dfde89625b9d1ba8c49a5e55afb336c5d9540.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89b901ada411cb87300dff3c817f75fe6a62fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
