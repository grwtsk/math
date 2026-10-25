# prodEmbeddingDisjointEquivSigmaEmbeddingRestricted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1489a36b3669a9cd73d911598bfeac369fce3935587195fad6457b6b19299e4d",
  "kind": "def",
  "lexical_name": "prodEmbeddingDisjointEquivSigmaEmbeddingRestricted",
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
  "slug": "prodembeddingdisjointequivsigmaembeddingrestricted--5276fcc2f98dd886fa8a4322",
  "source": {
    "blob": "53655a99bbfa6916262911342570e11b7cc88911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5276fcc2f98dd886fa8a43228669fcbb9885d6f7ef69ea631b6d5e80c6e7b156",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1489a36b3669a9cd73d911598bfeac369fce3935587195fad6457b6b19299e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEmbeddingDisjointEquivSigmaEmbeddingRestricted {α β γ : Type*} :
    { f : (α ↪ γ) × (β ↪ γ) // Disjoint (Set.range f.1) (Set.range f.2) } ≃
      Σf : α ↪ γ, β ↪ ↥(Set.range f)ᶜ :=
  (subtypeProdEquivSigmaSubtype fun (a : α ↪ γ) (b : β ↪ _) =>
        Disjoint (Set.range a) (Set.range b)).trans <|
    Equiv.sigmaCongrRight fun a =>
      (subtypeEquivProp <| by
            ext f
            rw [← Set.range_subset_iff, Set.subset_compl_iff_disjoint_right, disjoint_comm]).trans
        (codRestrict _ _)

/-- A combination of the above results, allowing us to turn one embedding over a sum type
into two dependent embeddings, the second of which avoids any members of the range
of the first. This is helpful for constructing larger embeddings out of smaller ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53655a99bbfa6916262911342570e11b7cc88911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
