# ab_add_one_dvd_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81a01d46-d960-3bf2-ede5-a3b245baebd1",
  "kind": "lemma",
  "lexical_name": "ab_add_one_dvd_g",
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
  "slug": "ab-add-one-dvd-g--17ebebfe1a83c1f0700820ca",
  "source": {
    "blob": "1046bbe92403ce032e261e4148cbb8acb87e5d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17ebebfe1a83c1f0700820ca1990cf270cb4aeac61d8759134fe4046000a195a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81a01d46-d960-3bf2-ede5-a3b245baebd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ab_add_one_dvd_g : a * b + 1 ∣ h.g :=
  h.dvd_g_of_le_N_of_dvd h.N_le_large_n h.ab_add_one_dvd_a_pow_large_n_add_b
    h.ab_add_one_dvd_b_pow_large_n_add_a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1046bbe92403ce032e261e4148cbb8acb87e5d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
