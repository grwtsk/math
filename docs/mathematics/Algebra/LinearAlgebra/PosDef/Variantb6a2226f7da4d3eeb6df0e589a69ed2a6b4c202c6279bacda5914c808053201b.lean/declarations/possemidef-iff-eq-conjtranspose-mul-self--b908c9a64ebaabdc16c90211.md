# posSemidef_iff_eq_conjTranspose_mul_self

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
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fc937ab-24d1-f8d9-830f-dea2bef41882",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3e81b96-f5e6-6fb8-0c97-b9431f0651e8",
  "kind": "lemma",
  "lexical_name": "posSemidef_iff_eq_conjTranspose_mul_self",
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
  "slug": "possemidef-iff-eq-conjtranspose-mul-self--b908c9a64ebaabdc16c90211",
  "source": {
    "blob": "29b799c847e2d6ffe174c1c4d10fee095374ce2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 330,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b908c9a64ebaabdc16c902115841797d10c76e89ad780f62eb00b4e9623df02f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3e81b96-f5e6-6fb8-0c97-b9431f0651e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posSemidef_iff_eq_conjTranspose_mul_self {A : Matrix n n 𝕜} :
    PosSemidef A ↔ ∃ (B : Matrix n n 𝕜), A = Bᴴ * B := by
  classical
  refine ⟨fun hA ↦ ⟨hA.sqrt, ?_⟩, fun ⟨B, hB⟩ ↦ (hB ▸ posSemidef_conjTranspose_mul_self B)⟩
  simp_rw [← PosSemidef.sq_sqrt hA, pow_two]
  rw [hA.posSemidef_sqrt.1]

@[deprecated (since := "2025-05-07")]
alias posSemidef_iff_eq_transpose_mul_self := posSemidef_iff_eq_conjTranspose_mul_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29b799c847e2d6ffe174c1c4d10fee095374ce2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
