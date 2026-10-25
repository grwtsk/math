# nilpotent_of_mem_dpIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0b3af1fad9e007182ccf68f5d4a9b00c557889a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da31bb02-70a3-891d-8124-dd6fc195936b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a23097ac-0e5d-ebe1-a9a3-2a063463d9db",
  "kind": "theorem",
  "lexical_name": "nilpotent_of_mem_dpIdeal",
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
  "slug": "nilpotent-of-mem-dpideal--f3d7225512b665a8bd40d8c3",
  "source": {
    "blob": "c0b3af1fad9e007182ccf68f5d4a9b00c557889a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d7225512b665a8bd40d8c3ca238ae2d2b65b4107ee3d193d079297aa20b07a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a23097ac-0e5d-ebe1-a9a3-2a063463d9db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nilpotent_of_mem_dpIdeal {n : ℕ} (hn : n ≠ 0) (hnI : ∀ {y}, y ∈ I → n • y = 0)
    (hI : DividedPowers I) (ha : a ∈ I) : a ^ n = 0 := by
  have h_fac : (n ! : A) * hI.dpow n a = n • ((n - 1)! : A) * hI.dpow n a := by
    rw [nsmul_eq_mul, ← cast_mul, mul_factorial_pred hn]
  rw [← hI.factorial_mul_dpow_eq_pow ha, h_fac, smul_mul_assoc]
  exact hnI (I.mul_mem_left ((n - 1)! : A) (hI.dpow_mem hn ha))

/-- If J is another ideal of A with divided powers,
then the divided powers of I and J coincide on I • J

[Berthelot-1974], 1.6.1 (ii) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b3af1fad9e007182ccf68f5d4a9b00c557889a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
