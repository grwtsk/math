# instNonUnitalNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a82bca836d9ef73d298790d349cf2df5d8dd26603e5b0d7ba6731d14eb140c3",
  "kind": "instance",
  "lexical_name": "instNonUnitalNonAssocSemiring",
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
  "slug": "instnonunitalnonassocsemiring--2cda2da5b846e15925ca4ed9",
  "source": {
    "blob": "a7e51d1e7df9148d855bb60e0b37d8fef5647c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 232,
    "path": "GRWTSK/Algebra/WithTop/Variant3d0883dcc5b27071dab643833b46fd2dcfc8f424c1db13d37e00a12d592f3062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cda2da5b846e15925ca4ed9bd95a90453e6ff71a6dc7792c353de18e2b9553e",
  "verification": {
    "reference": "docs/verification/Algebra/WithTop/Variant3d0883dcc5b27071dab643833b46fd2dcfc8f424c1db13d37e00a12d592f3062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a82bca836d9ef73d298790d349cf2df5d8dd26603e5b0d7ba6731d14eb140c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalNonAssocSemiring [NonUnitalNonAssocSemiring α]
    [Subsingleton (AddUnits α)] : NonUnitalNonAssocSemiring (WithTop α) where
  right_distrib a b c := by
    cases c with
    | top =>
      by_cases ha : a = 0
      · simp [ha]
      · have : a + b ≠ 0 := by
          cases a <;> cases b <;> norm_cast at * <;> simp [ha]
        simp [ha, this]
    | coe c =>
      by_cases hc : c = 0; · simp [hc]
      simp only [mul_coe_eq_bind hc]
      cases a <;> cases b <;> try rfl
      exact congr_arg some (add_mul _ _ _)
  left_distrib c a b := by
    cases c with
    | top =>
      by_cases ha : a = 0
      · simp [ha]
      · have : a + b ≠ 0 := by
          cases a <;> cases b <;> norm_cast at * <;> simp [ha]
        simp [ha, this]
    | coe c =>
      by_cases hc : c = 0; · simp [hc]
      simp only [coe_mul_eq_bind hc]
      cases a <;> cases b <;> try rfl
      exact congr_arg some (mul_add _ _ _)

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WithTop/Variant3d0883dcc5b27071dab643833b46fd2dcfc8f424c1db13d37e00a12d592f3062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WithTop/Variant3d0883dcc5b27071dab643833b46fd2dcfc8f424c1db13d37e00a12d592f3062.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e51d1e7df9148d855bb60e0b37d8fef5647c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
