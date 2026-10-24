# coe_toLinear_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35e2890b73af5c16ad4954952c95aa742556c18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3fbdbee-80dc-6da6-65d8-295119ee2cb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22d49050-7bc9-f8bf-ecb0-fc654864ee48",
  "kind": "lemma",
  "lexical_name": "coe_toLinear_ne_zero_iff",
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
  "slug": "coe-tolinear-ne-zero-iff--1063814e02f7c5de234f0ab5",
  "source": {
    "blob": "b35e2890b73af5c16ad4954952c95aa742556c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1063814e02f7c5de234f0ab5162e861e112de3d38c773f4f945213b793be36fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22d49050-7bc9-f8bf-ecb0-fc654864ee48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_toLinear_ne_zero_iff : (χ : L →ₗ[R] R) ≠ 0 ↔ χ.IsNonZero := by simp

/-- The kernel of a weight of a Lie module with linear weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35e2890b73af5c16ad4954952c95aa742556c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
