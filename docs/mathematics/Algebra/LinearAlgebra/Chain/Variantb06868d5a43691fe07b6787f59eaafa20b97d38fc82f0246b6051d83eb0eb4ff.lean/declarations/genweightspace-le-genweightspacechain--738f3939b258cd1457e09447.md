# genWeightSpace_le_genWeightSpaceChain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92e8372626ac37d220d254ae88dfc9b3195c479a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7abea03-f69d-2f53-9ab7-a28a2e9e6b93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe491f8d-2d54-10f5-67e2-33c0e95bcc0f",
  "kind": "lemma",
  "lexical_name": "genWeightSpace_le_genWeightSpaceChain",
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
  "slug": "genweightspace-le-genweightspacechain--738f3939b258cd1457e09447",
  "source": {
    "blob": "92e8372626ac37d220d254ae88dfc9b3195c479a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:738f3939b258cd1457e09447076ec16efb2d80e37be402221a9475976fa17a20",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe491f8d-2d54-10f5-67e2-33c0e95bcc0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma genWeightSpace_le_genWeightSpaceChain {k : ℤ} (hk : k ∈ Ioo p q) :
    genWeightSpace M (k • χ₁ + χ₂) ≤ genWeightSpaceChain M χ₁ χ₂ p q :=
  le_biSup (fun i ↦ genWeightSpace M (i • χ₁ + χ₂)) hk

end IsNilpotent

section LieSubalgebra

open LieAlgebra

variable {H : LieSubalgebra R L} (α χ : H → R) (p q : ℤ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantb06868d5a43691fe07b6787f59eaafa20b97d38fc82f0246b6051d83eb0eb4ff.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92e8372626ac37d220d254ae88dfc9b3195c479a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
