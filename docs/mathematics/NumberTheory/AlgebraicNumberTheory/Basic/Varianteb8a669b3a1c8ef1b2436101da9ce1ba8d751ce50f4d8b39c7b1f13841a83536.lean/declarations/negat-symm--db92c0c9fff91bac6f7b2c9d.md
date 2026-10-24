# negAt_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef92ca9-304e-5d4b-8ef8-c649af70a8fa",
  "kind": "theorem",
  "lexical_name": "negAt_symm",
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
  "slug": "negat-symm--db92c0c9fff91bac6f7b2c9d",
  "source": {
    "blob": "82a4cd2cca4d1719930333affd8822ea9a3db609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 961,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db92c0c9fff91bac6f7b2c9d8175cf71a79346e807af2bac45085e37cdfbfdb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef92ca9-304e-5d4b-8ef8-c649af70a8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negAt_symm :
    (negAt s).symm = negAt s := by
  ext x w
  · by_cases hw : w ∈ s
    · simp_rw [negAt_apply_isReal_and_mem _ hw, negAt, prodCongr_symm,
        prodCongr_apply, piCongrRight_symm_apply, ite_eq_left hw, symm_neg,
        ContinuousLinearEquiv.neg_apply]
    · simp_rw [negAt_apply_isReal_and_notMem _ hw, negAt, prodCongr_symm,
        prodCongr_apply, piCongrRight_symm_apply, ite_eq_right hw, refl_symm,
        refl_apply]
  · rfl

/-- For `x : mixedSpace K`, the set `signSet x` is the set of real places `w` s.t. `x w ≤ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4cd2cca4d1719930333affd8822ea9a3db609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
