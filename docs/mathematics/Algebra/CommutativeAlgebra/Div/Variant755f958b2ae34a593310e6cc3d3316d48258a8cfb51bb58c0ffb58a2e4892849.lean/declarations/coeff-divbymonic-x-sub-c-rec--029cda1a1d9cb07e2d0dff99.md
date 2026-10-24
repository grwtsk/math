# coeff_divByMonic_X_sub_C_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f6de398a3e9ea7c217e175c8707ce2615f4b91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba730bc9-c78a-89d5-3e26-e9f7d2adca96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a723d011-18e4-f127-b654-3dae034a2d13",
  "kind": "lemma",
  "lexical_name": "coeff_divByMonic_X_sub_C_rec",
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
  "slug": "coeff-divbymonic-x-sub-c-rec--029cda1a1d9cb07e2d0dff99",
  "source": {
    "blob": "53f6de398a3e9ea7c217e175c8707ce2615f4b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 456,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:029cda1a1d9cb07e2d0dff99a0b16f66839554c70a3e6faf97fb3e39c1c467dd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a723d011-18e4-f127-b654-3dae034a2d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_divByMonic_X_sub_C_rec (p : R[X]) (a : R) (n : ℕ) :
    (p /ₘ (X - C a)).coeff n = coeff p (n + 1) + a * (p /ₘ (X - C a)).coeff (n + 1) := by
  nontriviality R
  have := monic_X_sub_C a
  set q := p /ₘ (X - C a)
  rw [← p.modByMonic_add_div (X - C a)]
  have : degree (p %ₘ (X - C a)) < ↑(n + 1) := degree_X_sub_C a ▸ p.degree_modByMonic_lt this
    |>.trans_le <| WithBot.coe_le_coe.mpr le_add_self
  simp [q, sub_mul, add_sub, coeff_eq_zero_of_degree_lt this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variant755f958b2ae34a593310e6cc3d3316d48258a8cfb51bb58c0ffb58a2e4892849.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f6de398a3e9ea7c217e175c8707ce2615f4b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
