# IsRamified.finrank_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cabd68d8f78b56ac8db99dae2abde11ab27886ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b181eb0-f805-e759-5139-3bd1cf8cd650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:847de971-637f-9d57-a8d9-4e041cb3ec5f",
  "kind": "theorem",
  "lexical_name": "IsRamified.finrank_eq_two",
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
  "slug": "isramified-finrank-eq-two--2b4a1d9be406c45cbb4370d5",
  "source": {
    "blob": "cabd68d8f78b56ac8db99dae2abde11ab27886ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4a1d9be406c45cbb4370d55651904503fd88c0d9768d0093b508ef1386268c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:847de971-637f-9d57-a8d9-4e041cb3ec5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsRamified.finrank_eq_two [w.LiesOver v] (h : w.IsRamified K) :
    Module.finrank v.Completion w.Completion = 2 := by
  have H := NumberField.InfinitePlace.isRamified_iff.mp h
  rw [NumberField.InfinitePlace.LiesOver.comap_eq w v] at H
  have := LiesOver.extensionEmbedding_liesOver_of_isReal w H.2
  rw [Algebra.finrank_eq_of_equiv_equiv (ringEquivRealOfIsReal H.2)
      (ringEquivComplexOfIsComplex H.1) (by ext; simp),
    Complex.finrank_real_complex]

/-- If `w` is an unramified place over `v` then `w.Completion` has `v.Completion` dimension one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant8b85b8569d524966c509d2f7c27bfa6ee7fbb37d3c7d30389d4656a82cebc521.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabd68d8f78b56ac8db99dae2abde11ab27886ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
