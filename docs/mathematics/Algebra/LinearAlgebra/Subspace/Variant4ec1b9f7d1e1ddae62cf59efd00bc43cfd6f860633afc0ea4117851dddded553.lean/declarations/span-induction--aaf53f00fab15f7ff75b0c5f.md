# span_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee69276f-5ef2-d946-500d-ed7443ed33a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:626fad84-0e0e-b238-6745-3f11655dbcdc",
  "kind": "lemma",
  "lexical_name": "span_induction",
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
  "slug": "span-induction--aaf53f00fab15f7ff75b0c5f",
  "source": {
    "blob": "1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf53f00fab15f7ff75b0c5f76e7c1aa24072e8dea980c13a7a82ae80f3e0508",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:626fad84-0e0e-b238-6745-3f11655dbcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_induction {S : Set (ℙ K V)} {motive : ∀ x, x ∈ span S → Prop}
    (of_mem : ∀ (x) (hx : x ∈ S), motive x (subset_span S hx))
    (add : ∀ (v w : V) (hv : v ≠ 0) (hw : w ≠ 0) (hvw : v + w ≠ 0)
      (hv' : Projectivization.mk K v hv ∈ span S)
      (hw' : Projectivization.mk K w hw ∈ span S), motive _ hv' → motive _ hw' →
      motive (Projectivization.mk K (v + w) hvw) ((span S).mem_add v w hv hw hvw hv' hw'))
    {x : ℙ K V} (hx : x ∈ span S) : motive x hx := by
  induction hx with
  | of_mem _ hx => exact of_mem _ hx
  | add v w hv hw hvw _ _ ih₁ ih₂ => exact add v w hv hw hvw _ _ ih₁ ih₂

/-- The span of a set of points is a Galois insertion between sets of points of a projective space
and subspaces of the projective space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4ec1b9f7d1e1ddae62cf59efd00bc43cfd6f860633afc0ea4117851dddded553.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2a5b2d9bcc1bddc3035b2e7090ce7509c39a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
