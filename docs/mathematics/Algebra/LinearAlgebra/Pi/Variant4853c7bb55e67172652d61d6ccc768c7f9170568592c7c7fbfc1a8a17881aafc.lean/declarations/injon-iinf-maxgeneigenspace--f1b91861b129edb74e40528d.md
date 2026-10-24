# injOn_iInf_maxGenEigenspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbd78465d2f209c3e1b69dbb565436d838941b95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e18bb642-b31d-6ff2-ac0e-52f6a091a63f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46fe6df1-c9d9-c30c-1277-b749f43a7a0a",
  "kind": "lemma",
  "lexical_name": "injOn_iInf_maxGenEigenspace",
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
  "slug": "injon-iinf-maxgeneigenspace--f1b91861b129edb74e40528d",
  "source": {
    "blob": "bbd78465d2f209c3e1b69dbb565436d838941b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1b91861b129edb74e40528d2ef449e2abb7ef0c9b646367e76c5f1bef3a60e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46fe6df1-c9d9-c30c-1277-b749f43a7a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injOn_iInf_maxGenEigenspace :
    InjOn (fun χ : ι → R ↦ ⨅ i, (f i).maxGenEigenspace (χ i))
      {χ | ⨅ i, (f i).maxGenEigenspace (χ i) ≠ ⊥} := by
  rintro χ₁ _ χ₂
    hχ₂ (hχ₁₂ : ⨅ i, (f i).maxGenEigenspace (χ₁ i) = ⨅ i, (f i).maxGenEigenspace (χ₂ i))
  contrapose! hχ₂
  simpa [hχ₁₂] using disjoint_iInf_maxGenEigenspace f hχ₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant4853c7bb55e67172652d61d6ccc768c7f9170568592c7c7fbfc1a8a17881aafc.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd78465d2f209c3e1b69dbb565436d838941b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
