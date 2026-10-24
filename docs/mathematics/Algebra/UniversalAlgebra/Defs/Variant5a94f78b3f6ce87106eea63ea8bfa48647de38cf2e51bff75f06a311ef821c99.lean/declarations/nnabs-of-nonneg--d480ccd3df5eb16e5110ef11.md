# nnabs_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17a16cab929f5ab10979e46078284068c567bf88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 910,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaa47943-75d6-3603-c1b7-4dcb637f1ff9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfc17c0b-7fb9-3262-72f0-14b37060bc0b",
  "kind": "theorem",
  "lexical_name": "nnabs_of_nonneg",
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
  "slug": "nnabs-of-nonneg--d480ccd3df5eb16e5110ef11",
  "source": {
    "blob": "17a16cab929f5ab10979e46078284068c567bf88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 913,
    "line": 910,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d480ccd3df5eb16e5110ef113662ce5c7f26df397cdf3290b6b874c6d3ad725f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfc17c0b-7fb9-3262-72f0-14b37060bc0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 910–913.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nnabs_of_nonneg {x : ℝ} (h : 0 ≤ x) : nnabs x = toNNReal x := by
  ext
  rw [coe_toNNReal x h, coe_nnabs, abs_of_nonneg h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant5a94f78b3f6ce87106eea63ea8bfa48647de38cf2e51bff75f06a311ef821c99.lean#L910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a16cab929f5ab10979e46078284068c567bf88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
