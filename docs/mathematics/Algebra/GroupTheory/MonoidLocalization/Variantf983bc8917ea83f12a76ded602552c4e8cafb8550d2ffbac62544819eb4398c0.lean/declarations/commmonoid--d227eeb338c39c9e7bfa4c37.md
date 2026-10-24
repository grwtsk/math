# commMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f65a0be41c61b04c284e0ecd9a332d2fec98a870900c0f3e6d83ae5a7262d0f1",
  "kind": "instance",
  "lexical_name": "commMonoid",
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
  "slug": "commmonoid--d227eeb338c39c9e7bfa4c37",
  "source": {
    "blob": "eb088e6a9653d1084284a08cee3570c313548705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 262,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d227eeb338c39c9e7bfa4c371f980c9bc4c15dffe8dbfff2d383fd44928ae1ee",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f65a0be41c61b04c284e0ecd9a332d2fec98a870900c0f3e6d83ae5a7262d0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commMonoid : CommMonoid (Localization S) where
  mul := (· * ·)
  one := 1
  mul_assoc x y z := show (x.mul S y).mul S z = x.mul S (y.mul S z) by
    rw [Localization.mul]; apply (r S).commMonoid.mul_assoc
  mul_comm x y := show x.mul S y = y.mul S x by
    rw [Localization.mul]; apply (r S).commMonoid.mul_comm
  mul_one x := show x.mul S (.one S) = x by
    rw [Localization.mul, Localization.one]; apply (r S).commMonoid.mul_one
  one_mul x := show (Localization.one S).mul S x = x by
    rw [Localization.mul, Localization.one]; apply (r S).commMonoid.one_mul
  npow := Localization.npow S
  npow_zero x := show Localization.npow S 0 x = .one S by
    rw [Localization.npow, Localization.one]; apply (r S).commMonoid.npow_zero
  npow_succ n x := show .npow S n.succ x = x.mul S (.npow S n x) by
    rw [Localization.npow, Localization.mul]; apply (r S).commMonoid.npow_succ

variable {S}

/-- Given a `CommMonoid` `M` and submonoid `S`, `mk` sends `x : M`, `y ∈ S` to the equivalence
class of `(x, y)` in the localization of `M` at `S`. -/
@[to_additive
    "Given an `AddCommMonoid` `M` and submonoid `S`, `mk` sends `x : M`, `y ∈ S` to
the equivalence class of `(x, y)` in the localization of `M` at `S`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb088e6a9653d1084284a08cee3570c313548705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
