# eq_of_factors_eq_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99b75dd1703cbf30e951518a71caada415683e1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d339c807c9ecef9c58e2f1ab10e56a91922e09ea9057d810b082fd2f9595bb4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a26867a-2f97-d2b6-8e65-2ef62a0a8838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eae4d48c-9e94-0b3a-9f6a-240bb0833d00",
  "kind": "theorem",
  "lexical_name": "eq_of_factors_eq_factors",
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
  "slug": "eq-of-factors-eq-factors--14e2c4f8e7b3c5c133ebbf3d",
  "source": {
    "blob": "99b75dd1703cbf30e951518a71caada415683e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 258,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variantd339c807c9ecef9c58e2f1ab10e56a91922e09ea9057d810b082fd2f9595bb4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e2c4f8e7b3c5c133ebbf3d091090fb6c512c3f5ac5f06279f137b364872a14",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variantd339c807c9ecef9c58e2f1ab10e56a91922e09ea9057d810b082fd2f9595bb4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae4d48c-9e94-0b3a-9f6a-240bb0833d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_factors_eq_factors {a b : Associates α} (h : a.factors = b.factors) : a = b := by
  have : a.factors.prod = b.factors.prod := by rw [h]
  rwa [factors_prod, factors_prod] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variantd339c807c9ecef9c58e2f1ab10e56a91922e09ea9057d810b082fd2f9595bb4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variantd339c807c9ecef9c58e2f1ab10e56a91922e09ea9057d810b082fd2f9595bb4c.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99b75dd1703cbf30e951518a71caada415683e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
