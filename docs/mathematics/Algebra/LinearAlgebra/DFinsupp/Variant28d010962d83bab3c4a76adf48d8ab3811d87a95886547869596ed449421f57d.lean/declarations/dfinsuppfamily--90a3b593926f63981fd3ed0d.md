# dfinsuppFamilyₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a7a34e81684388aa7f39b2cff2634cbcf4027892b62b4d10b9d831e6dfa0b02",
  "kind": "def",
  "lexical_name": "dfinsuppFamilyₗ",
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
  "slug": "dfinsuppfamily--90a3b593926f63981fd3ed0d",
  "source": {
    "blob": "e69a7587e58d04e95afebdf525dec148f84cd603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 203,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90a3b593926f63981fd3ed0d58f7bbb7a966549e456fba970a036eab5b4fe44f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a7a34e81684388aa7f39b2cff2634cbcf4027892b62b4d10b9d831e6dfa0b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dfinsuppFamilyₗ :
    (Π (p : Π i, κ i), MultilinearMap R (fun i ↦ M i (p i)) (N p))
      →ₗ[R] MultilinearMap R (fun i => Π₀ j : κ i, M i j) (Π₀ t : Π i, κ i, N t) where
  toFun := dfinsuppFamily
  map_add' := dfinsuppFamily_add
  map_smul' := dfinsuppFamily_smul

variable {N : Type*} [AddCommMonoid N] [Module R N] [(i : ι) → DecidableEq (κ i)]

variable (R κ) in
/-- The linear equivalence between families indexed by `p : Π i : ι, κ i` of multilinear maps
on the `fun i ↦ M i (p i)` and the space of multilinear map on `fun i ↦ Π₀ j : κ i, M i j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69a7587e58d04e95afebdf525dec148f84cd603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
