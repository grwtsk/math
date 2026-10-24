# IsBigO.rpow_rpow_nhdsGE_zero_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66fb2601c9d7d572f3950b54fbf9616034ffff6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02d7af1b-b1d7-5159-41f3-61a8f346e3eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:796a2fef-4c52-a968-c079-45d8b481f4a3",
  "kind": "theorem",
  "lexical_name": "IsBigO.rpow_rpow_nhdsGE_zero_of_le",
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
  "slug": "isbigo-rpow-rpow-nhdsge-zero-of-le--2621d58c739ea344e1145146",
  "source": {
    "blob": "66fb2601c9d7d572f3950b54fbf9616034ffff6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 314,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2621d58c739ea344e11451461f394955d951fb2827960d6316dca051eae9b6e5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:796a2fef-4c52-a968-c079-45d8b481f4a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigO.rpow_rpow_nhdsGE_zero_of_le {a b : ℝ} (h : a ≤ b) (hb : b ≠ 0) :
    (· ^ b : ℝ → ℝ) =O[𝓝[≥] 0] (· ^ a) :=
  .rpow_rpow_nhdsGE_zero_of_le_of_imp h (absurd · hb)

/-- If `a ≤ 1`, then `x = O(x ^ a)` as `x → 0`, `x ≥ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66fb2601c9d7d572f3950b54fbf9616034ffff6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
