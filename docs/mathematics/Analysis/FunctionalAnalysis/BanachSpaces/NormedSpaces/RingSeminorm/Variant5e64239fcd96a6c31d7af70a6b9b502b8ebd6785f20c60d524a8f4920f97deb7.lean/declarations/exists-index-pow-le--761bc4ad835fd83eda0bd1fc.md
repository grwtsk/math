# exists_index_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c9f8452-9888-6d08-8fc6-f80f632efc17",
  "kind": "theorem",
  "lexical_name": "exists_index_pow_le",
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
  "slug": "exists-index-pow-le--761bc4ad835fd83eda0bd1fc",
  "source": {
    "blob": "2525258a829c3d2fcede8a3b852a985131412f7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:761bc4ad835fd83eda0bd1fc4a63f1e28bd3b796d2a3a04759587a1e38b021ec",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c9f8452-9888-6d08-8fc6-f80f632efc17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_index_pow_le (hna : IsNonarchimedean p) (x y : R) (n : ℕ) :
    ∃ (m : ℕ), m < n + 1 ∧ p ((x + y) ^ (n : ℕ)) ^ (1 / (n : ℝ)) ≤
      (p (x ^ m) * p (y ^ (n - m : ℕ))) ^ (1 / (n : ℝ)) := by
  obtain ⟨m, hm_lt, hm⟩ := hna.add_pow_le x y n (map_mul_le_mul p)
  exact ⟨m, hm_lt, by gcongr⟩

end CommRing

end RingSeminorm

/-- If `f` is a ring seminorm on `a`, then `∀ {n : ℕ}, n ≠ 0 → f (a ^ n) ≤ f a ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2525258a829c3d2fcede8a3b852a985131412f7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
