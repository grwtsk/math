# gauss_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:797dbb14-1e01-dc45-b2f9-355b7b3fbdbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3f5ae62-1e43-3ded-9c0b-e45c30b7f4a2",
  "kind": "theorem",
  "lexical_name": "gauss_lemma",
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
  "slug": "gauss-lemma--ccedd16bfdc3e997aceaf4a0",
  "source": {
    "blob": "fc54faba7afc40e533581d7dca05000d2498378f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccedd16bfdc3e997aceaf4a099bd344fe6f5b74667ec1207a4be8218f22e1b35",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f5ae62-1e43-3ded-9c0b-e45c30b7f4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauss_lemma {p : ℕ} [h : Fact p.Prime] {a : ℤ} (hp : p ≠ 2) (ha0 : (a : ZMod p) ≠ 0) :
    legendreSym p a = (-1) ^ ((Ico 1 (p / 2).succ).filter fun x : ℕ =>
      p / 2 < (a * x : ZMod p).val).card := by
  replace hp : Odd p := h.out.odd_of_ne_two hp
  have : (legendreSym p a : ZMod p) = (((-1) ^ ((Ico 1 (p / 2).succ).filter fun x : ℕ =>
      p / 2 < (a * x : ZMod p).val).card : ℤ) : ZMod p) := by
    rw [legendreSym.eq_pow, gauss_lemma_aux p ha0]
  cases legendreSym.eq_one_or_neg_one p ha0 <;>
  cases neg_one_pow_eq_or ℤ
    ((Ico 1 (p / 2).succ).filter fun x : ℕ => p / 2 < (a * x : ZMod p).val).card <;>
  simp_all [ne_neg_self hp one_ne_zero, (ne_neg_self hp one_ne_zero).symm]
#align zmod.gauss_lemma ZMod.gauss_lemma

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantb673435a694311c5d29ea0be9164f269f519b12e7287c5269868414cd177fe5b.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc54faba7afc40e533581d7dca05000d2498378f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
