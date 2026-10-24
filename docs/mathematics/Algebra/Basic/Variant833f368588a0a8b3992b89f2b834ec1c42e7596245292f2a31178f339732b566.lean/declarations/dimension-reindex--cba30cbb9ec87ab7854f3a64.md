# dimension_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66f0b12387b1fe90f3998d0165cca79f67f746b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8494d103-d57f-f8e7-3df9-ffabc89f470b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd1d5037-d08d-d775-92ed-beadb4b4ef97",
  "kind": "lemma",
  "lexical_name": "dimension_reindex",
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
  "slug": "dimension-reindex--cba30cbb9ec87ab7854f3a64",
  "source": {
    "blob": "66f0b12387b1fe90f3998d0165cca79f67f746b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 513,
    "path": "GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba30cbb9ec87ab7854f3a64d48d7bad422d6a06fa919151f8e5c73d950bc48b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd1d5037-d08d-d775-92ed-beadb4b4ef97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dimension_reindex (P : Presentation R S ι σ) {ι' σ' : Type*} (e : ι' ≃ ι) (f : σ' ≃ σ) :
    (P.reindex e f).dimension = P.dimension := by
  simp [dimension, Nat.card_congr e, Nat.card_congr f]

section

variable {v : ι → MvPolynomial σ R}
  (s : MvPolynomial σ R ⧸ (Ideal.span <| Set.range v) → MvPolynomial σ R)
  (hs : ∀ x, Ideal.Quotient.mk _ (s x) = x)

/--
The naive presentation of a quotient `R[Xᵢ] ⧸ (vⱼ)`.
If the definitional equality of the section matters, it can be explicitly provided.
-/
@[simps! toGenerators]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f0b12387b1fe90f3998d0165cca79f67f746b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
