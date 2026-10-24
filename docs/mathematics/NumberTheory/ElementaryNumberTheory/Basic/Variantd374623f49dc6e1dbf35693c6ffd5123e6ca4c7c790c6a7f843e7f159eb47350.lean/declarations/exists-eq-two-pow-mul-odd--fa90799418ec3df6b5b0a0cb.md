# exists_eq_two_pow_mul_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27f661a0f628913e0e536f153412aafac6bf9355",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ad24e0f-10f4-7ebe-f1c5-81d2c1e6e579",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0bc8198-20ed-cbad-b82b-fe8298cd12fb",
  "kind": "theorem",
  "lexical_name": "exists_eq_two_pow_mul_odd",
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
  "slug": "exists-eq-two-pow-mul-odd--fa90799418ec3df6b5b0a0cb",
  "source": {
    "blob": "27f661a0f628913e0e536f153412aafac6bf9355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 276,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa90799418ec3df6b5b0a0cb33460ee71fda92dcad769f4fda2d8e5569b7945d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0bc8198-20ed-cbad-b82b-fe8298cd12fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_two_pow_mul_odd {n : ℕ} (hn : n ≠ 0) :
    ∃ k m : ℕ, Odd m ∧ n = 2 ^ k * m :=
  let ⟨k, m, hm, hn⟩ := exists_eq_pow_mul_and_not_dvd hn 2 (succ_ne_self 1)
  ⟨k, m, not_even_iff_odd.1 (mt Even.two_dvd hm), hn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27f661a0f628913e0e536f153412aafac6bf9355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
