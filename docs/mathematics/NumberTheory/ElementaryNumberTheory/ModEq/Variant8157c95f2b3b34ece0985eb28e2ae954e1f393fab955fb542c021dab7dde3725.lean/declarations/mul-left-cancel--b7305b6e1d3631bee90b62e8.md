# mul_left_cancel'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d3ea57161f5eb831ca0e38d066bf613512b69d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6167d6f2-bc75-9e21-22b1-4d605b3dddc5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7b86e2f-2ba2-9da3-42c9-bc1d6b91b66c",
  "kind": "theorem",
  "lexical_name": "mul_left_cancel'",
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
  "slug": "mul-left-cancel--b7305b6e1d3631bee90b62e8",
  "source": {
    "blob": "2d3ea57161f5eb831ca0e38d066bf613512b69d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 156,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7305b6e1d3631bee90b62e866007e9489229591fe9177e3fdc43f1421e9cc98",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b86e2f-2ba2-9da3-42c9-bc1d6b91b66c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_left_cancel' {a b c m : ℕ} (hc : c ≠ 0) :
    c * a ≡ c * b [MOD c * m] → a ≡ b [MOD m] := by
  simp only [modEq_iff_dvd, Int.natCast_mul, ← Int.mul_sub]
  exact fun h => (Int.dvd_of_mul_dvd_mul_left (Int.ofNat_ne_zero.mpr hc) h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant8157c95f2b3b34ece0985eb28e2ae954e1f393fab955fb542c021dab7dde3725.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d3ea57161f5eb831ca0e38d066bf613512b69d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
