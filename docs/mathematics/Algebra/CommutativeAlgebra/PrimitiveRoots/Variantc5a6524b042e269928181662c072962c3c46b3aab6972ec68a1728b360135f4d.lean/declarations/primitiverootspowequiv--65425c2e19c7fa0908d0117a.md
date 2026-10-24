# primitiveRootsPowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b02d10f3d073ee6f9879ff9ef253f3c3ddab43ba01a03603e3edb35560a45a3c",
  "kind": "def",
  "lexical_name": "primitiveRootsPowEquiv",
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
  "slug": "primitiverootspowequiv--65425c2e19c7fa0908d0117a",
  "source": {
    "blob": "217096023fbc613883b9a611910c5833baf089ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 728,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65425c2e19c7fa0908d0117a8d8a76483ac59105af388892aef1359f77d7c642",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b02d10f3d073ee6f9879ff9ef253f3c3ddab43ba01a03603e3edb35560a45a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitiveRootsPowEquiv {a b n : ℕ} (h : a * b ≡ 1 [MOD n]) :
    primitiveRoots n R ≃ primitiveRoots n R where
  toFun x := ⟨x.1 ^ a,
    have hr : 0 < n := by by_contra! h; cases x; simp_all
    have hr' : a.Coprime n := by
      simpa [(a.gcd_dvd_left n).trans] using h.dvd_iff (Nat.gcd_dvd_right a n)
    (mem_primitiveRoots hr).mpr <| ((mem_primitiveRoots hr).mp x.2).pow_of_coprime _ hr'⟩
  invFun x := ⟨x.1 ^ b,
    have hr : 0 < n := by by_contra! h; cases x; simp_all
    have hr' : b.Coprime n := by
      simpa [(b.gcd_dvd_left n).trans] using h.dvd_iff (Nat.gcd_dvd_right b n)
    (mem_primitiveRoots hr).mpr <| ((mem_primitiveRoots hr).mp x.2).pow_of_coprime _ hr'⟩
  left_inv x := by ext; simp [← pow_mul,
    pow_eq_pow_of_modEq h (isPrimitiveRoot_of_mem_primitiveRoots x.2).pow_eq_one]
  right_inv x := by ext; simp [← pow_mul, mul_comm b,
    pow_eq_pow_of_modEq h (isPrimitiveRoot_of_mem_primitiveRoots x.2).pow_eq_one]

/-- Equivalence of coprime powers of primitive roots. Every `n`-th primitive root is taken to the
    `a`-th power given that `n` and `a` are coprime. -/
@[simps! apply_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217096023fbc613883b9a611910c5833baf089ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
