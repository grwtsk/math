# algNormFromConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:639696207e000399a4dad1893705d765ba8502ba56b298460674f863f6288658",
  "kind": "def",
  "lexical_name": "algNormFromConst",
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
  "slug": "algnormfromconst--86e5ffc52dece0859fd78887",
  "source": {
    "blob": "3daffb165c8daa2853759de3248357884e37d42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 279,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86e5ffc52dece0859fd7888715023683703008417899fe375f8056a1cf433a8d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:639696207e000399a4dad1893705d765ba8502ba56b298460674f863f6288658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algNormFromConst {k : K} {g : AlgebraNorm F K} (hg_k : g k ≠ 0) (hg_pm : IsPowMul g) :
    AlgebraNorm F K where
  __ := normFromConst hg_k hg_pm
  smul' x y := by
    have hx : g (algebraMap F K x) = ‖x‖ := by
      have hg1 : g 1 = 1 := by simpa [map_ne_zero_iff_ne_zero, sq] using hg_pm 1 one_le_two
      rw [Algebra.algebraMap_eq_smul_one, map_smul_eq_mul, hg1, mul_one]
    have hy y : g (algebraMap F K x * y) = g (algebraMap F K x) * g y := by
      rw [← Algebra.smul_def, map_smul_eq_mul, hx]
    simp [Algebra.smul_def, seminormFromConst_isMul_of_isMul hg_k hg_pm hy y,
      seminormFromConst_apply_of_isMul hg_k hg_pm hy, hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daffb165c8daa2853759de3248357884e37d42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
