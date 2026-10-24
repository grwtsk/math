# _root_.Matrix.posDef_inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd74c843-5140-fa0e-4c27-d7cf30fd80b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1638e23d-5a59-8f98-045b-09d2e31c58d8",
  "kind": "theorem",
  "lexical_name": "_root_.Matrix.posDef_inv_iff",
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
  "slug": "root-matrix-posdef-inv-iff--70cbe33ad5ce2544856d9e00",
  "source": {
    "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 538,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cbe33ad5ce2544856d9e005dee232bff1b30b2e6559826bc0ebe8b64c874cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1638e23d-5a59-8f98-045b-09d2e31c58d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Matrix.posDef_inv_iff [DecidableEq n] {M : Matrix n n 𝕜} :
    M⁻¹.PosDef ↔ M.PosDef :=
  ⟨fun h =>
    letI := (Matrix.isUnit_nonsing_inv_iff.1 <| h.isUnit).invertible
    Matrix.inv_inv_of_invertible M ▸ h.inv, (·.inv)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b799c847e2d6ffe174c1c4d10fee095374ce2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
