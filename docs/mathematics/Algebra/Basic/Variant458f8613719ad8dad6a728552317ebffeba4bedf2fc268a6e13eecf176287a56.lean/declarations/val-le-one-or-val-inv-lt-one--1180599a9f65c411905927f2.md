# val_le_one_or_val_inv_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ec2df2d98249cf416c09a55d151946533574627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bacab30-6bd9-e2c4-8a20-62420042f0a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d902ff6-88d4-2759-1a4f-791f826aa887",
  "kind": "theorem",
  "lexical_name": "val_le_one_or_val_inv_lt_one",
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
  "slug": "val-le-one-or-val-inv-lt-one--1180599a9f65c411905927f2",
  "source": {
    "blob": "2ec2df2d98249cf416c09a55d151946533574627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 367,
    "path": "GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1180599a9f65c411905927f2228b3dbb82366a629938b8e42d2deed3513edb7b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d902ff6-88d4-2759-1a4f-791f826aa887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem val_le_one_or_val_inv_lt_one (v : Valuation K Γ₀) (x : K) : v x ≤ 1 ∨ v x⁻¹ < 1 := by
  by_cases h : x = 0
  · simp only [h, map_zero, zero_le', inv_zero, zero_lt_one, or_self]
  · simp only [← one_lt_val_iff v h, le_or_lt]

/--
This theorem is a weaker version of `Valuation.val_le_one_or_val_inv_lt_one`, but more symmetric
in `x` and `x⁻¹`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec2df2d98249cf416c09a55d151946533574627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
