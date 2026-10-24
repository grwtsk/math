# primitiveRootsPowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af6464e201323d2cb4db51d5581dd10167a992fae0cdf3fa305fcf084e3d5cf9",
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
  "slug": "primitiverootspowequiv--405a335fb6f6cdc8f78cbef2",
  "source": {
    "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 720,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:405a335fb6f6cdc8f78cbef208868c9b84412f499f67d5ead910c9f32c7e00c6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af6464e201323d2cb4db51d5581dd10167a992fae0cdf3fa305fcf084e3d5cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–739.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f4c2e50f26687e733bc861fc76113cdea9b3a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
