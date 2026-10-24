# dfinsupp_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3496dd0c-82ff-a491-d2c5-c9c775541374",
  "kind": "theorem",
  "lexical_name": "dfinsupp_ext",
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
  "slug": "dfinsupp-ext--7db0f2c96afc955b200e48f4",
  "source": {
    "blob": "e69a7587e58d04e95afebdf525dec148f84cd603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db0f2c96afc955b200e48f401ee5b8eac1bded93926916300895d22d2ede30e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3496dd0c-82ff-a491-d2c5-c9c775541374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dfinsupp_ext [∀ i, DecidableEq (κ i)]
    ⦃f g : MultilinearMap R (fun i ↦ Π₀ j : κ i, M i j) N⦄
    (h : ∀ p : Π i, κ i,
      f.compLinearMap (fun i => DFinsupp.lsingle (p i)) =
      g.compLinearMap (fun i => DFinsupp.lsingle (p i))) : f = g := by
  ext x
  change f (fun i ↦ x i) = g (fun i ↦ x i)
  classical
  cases nonempty_fintype ι
  rw [funext (fun i ↦ Eq.symm (DFinsupp.sum_single (f := x i)))]
  simp_rw [DFinsupp.sum, MultilinearMap.map_sum_finset]
  congr! 1 with p
  simp_rw [MultilinearMap.ext_iff] at h
  exact h _ _

end Semiring

section dfinsuppFamily
variable {M : ∀ i, κ i → Type uM} {N : (Π i, κ i) → Type uN}

section Semiring

variable [DecidableEq ι] [Fintype ι] [Semiring R]
variable [∀ i k, AddCommMonoid (M i k)] [∀ p, AddCommMonoid (N p)]
variable [∀ i k, Module R (M i k)] [∀ p, Module R (N p)]

/--
Given a family of indices `κ` and a multilinear map `f p` for each way `p` to select one index from
each family, `dfinsuppFamily f` maps a family of finitely-supported functions (one for each domain
`κ i`) into a finitely-supported function from each selection of indices (with domain `Π i, κ i`).

Strictly this doesn't need multilinearity, only the fact that `f p m = 0` whenever `m i = 0` for
some `i`.

This is the `DFinsupp` version of `MultilinearMap.piFamily`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69a7587e58d04e95afebdf525dec148f84cd603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
