# one_le_primesOver_ncard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "686c0c8b6fa489e9b367a44f2bf30d2992107068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1250f43d-83a8-15f8-2cdd-a8d67c134456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35626dd9-eed9-7a25-b4f3-3a2f3386f20c",
  "kind": "theorem",
  "lexical_name": "one_le_primesOver_ncard",
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
  "slug": "one-le-primesover-ncard--e9dcbb29cf0ba564f2fdb157",
  "source": {
    "blob": "686c0c8b6fa489e9b367a44f2bf30d2992107068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1255,
    "line": 1245,
    "path": "GRWTSK/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9dcbb29cf0ba564f2fdb157700918e3c749085adda9c1882ae559073674d6ae",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35626dd9-eed9-7a25-b4f3-3a2f3386f20c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1245–1255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_primesOver_ncard : 1 ≤ (primesOver p B).ncard :=
  Nat.one_le_iff_ne_zero.mpr (primesOver_ncard_ne_zero p B)

@[deprecated (since := "2026-04-16")]
alias _root_.one_le_primesOver_ncard := one_le_primesOver_ncard

end IsDedekindDomain

end primesOverFinset

open IsDedekindDomain in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variante11dfd7f1575efc3e2bf4844350193a4e0a5d98284f663f43b3f637e097f6e91.lean#L1245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `686c0c8b6fa489e9b367a44f2bf30d2992107068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
