# weightedOrder_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d08c778-eb09-85e7-2dd4-8d515769e86d",
  "kind": "theorem",
  "lexical_name": "weightedOrder_le",
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
  "slug": "weightedorder-le--ae08fb70e1f945ea3c062e2f",
  "source": {
    "blob": "c4242a76deabd8311c3fde2213f378c144417003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae08fb70e1f945ea3c062e2fbe7eb773463f170fea2fc257a56fbc74facae884",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d08c778-eb09-85e7-2dd4-8d515769e86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedOrder_le {d : σ →₀ ℕ} (h : coeff d f ≠ 0) :
    f.weightedOrder w ≤ weight w d := by
  rw [weightedOrder, dite_eq_right]
  · simp only [ne_eq, Nat.cast_le, Nat.find_le_iff]
    exact ⟨weight w d, le_rfl, d, h, rfl⟩
  · exact (f.ne_zero_iff_exists_coeff_ne_zero_and_weight w).mpr ⟨weight w d, d, h, rfl⟩

/-- The `n`th coefficient of a formal power series is `0` if `n` is strictly
smaller than the order of the power series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant35e0e81e2c2124678c3c38f22d5b017be02ace6ffc330ae74fd80d2e50532963.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4242a76deabd8311c3fde2213f378c144417003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
