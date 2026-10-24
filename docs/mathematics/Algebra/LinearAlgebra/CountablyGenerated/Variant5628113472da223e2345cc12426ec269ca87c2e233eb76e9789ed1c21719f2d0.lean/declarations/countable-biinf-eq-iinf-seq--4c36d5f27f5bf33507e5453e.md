# countable_biInf_eq_iInf_seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1732fded7e6e4de54b0ee7290f109aa998c7d880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb0b71ad-fe85-3daa-60ab-01619c3de833",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2614a59-39f7-0bdc-db65-ece4719f1ff0",
  "kind": "theorem",
  "lexical_name": "countable_biInf_eq_iInf_seq",
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
  "slug": "countable-biinf-eq-iinf-seq--4c36d5f27f5bf33507e5453e",
  "source": {
    "blob": "1732fded7e6e4de54b0ee7290f109aa998c7d880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c36d5f27f5bf33507e5453ed9ebe07309ac5241d30448325a0ea6e66d768c4f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2614a59-39f7-0bdc-db65-ece4719f1ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_biInf_eq_iInf_seq [CompleteLattice α] {B : Set ι} (Bcbl : B.Countable)
    (Bne : B.Nonempty) (f : ι → α) : ∃ x : ℕ → ι, ⨅ t ∈ B, f t = ⨅ i, f (x i) :=
  let ⟨g, hg⟩ := Bcbl.exists_eq_range Bne
  ⟨g, hg.symm ▸ iInf_range⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Variant5628113472da223e2345cc12426ec269ca87c2e233eb76e9789ed1c21719f2d0.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1732fded7e6e4de54b0ee7290f109aa998c7d880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
