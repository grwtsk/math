# norm_le_pow_iff_norm_lt_pow_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69260dc47ccc1474018e7f79593145a8bb6a2a7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1085,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72a2c7da-b74f-6772-4330-c5d3e157bdb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ceac969-1ff7-8d7a-8b58-517a293535ea",
  "kind": "theorem",
  "lexical_name": "norm_le_pow_iff_norm_lt_pow_add_one",
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
  "slug": "norm-le-pow-iff-norm-lt-pow-add-one--993b06549e8d7a6dff55591b",
  "source": {
    "blob": "69260dc47ccc1474018e7f79593145a8bb6a2a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1094,
    "line": 1085,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:993b06549e8d7a6dff55591bd2e2efb5240b6e70351eebfff406a334bcf16dcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ceac969-1ff7-8d7a-8b58-517a293535ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1085–1094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_pow_iff_norm_lt_pow_add_one (x : ℚ_[p]) (n : ℤ) :
    ‖x‖ ≤ (p : ℝ) ^ n ↔ ‖x‖ < (p : ℝ) ^ (n + 1) := by
  have aux (n : ℤ) : 0 < ((p : ℝ) ^ n) := zpow_pos (mod_cast hp.1.pos) _
  by_cases hx0 : x = 0
  · simp [hx0, norm_zero, aux, le_of_lt (aux _)]
  rw [norm_eq_zpow_neg_valuation hx0]
  have h1p : 1 < (p : ℝ) := mod_cast hp.1.one_lt
  have H := zpow_right_strictMono₀ h1p
  rw [H.le_iff_le, H.lt_iff_lt, Int.lt_add_one_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean#L1085).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69260dc47ccc1474018e7f79593145a8bb6a2a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
