# centerEquivRootsOfUnity_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96b436d3-898e-2f7c-b5f8-28d5bf6d009b",
  "kind": "theorem",
  "lexical_name": "centerEquivRootsOfUnity_symm_apply",
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
  "slug": "centerequivrootsofunity-symm-apply--f2a5ec33535be7f131605209",
  "source": {
    "blob": "ccf30ad4eb34d16ce665df7db510553430114fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 534,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2a5ec33535be7f131605209faa70abc6d1dd3322872f94070bdd3b33b8dc2d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b436d3-898e-2f7c-b5f8-28d5bf6d009b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centerEquivRootsOfUnity_symm_apply
    (r : rootsOfUnity (max (Module.finrank R V) 1) R) :
    (centerEquivRootsOfUnity.symm r : V →ₗ[R] V) = r • LinearMap.id := by
  simp only [centerEquivRootsOfUnity, MulEquiv.symm_mk, MulEquiv.coe_mk, Equiv.coe_fn_symm_mk,
    centerEquivRootsOfUnity_invFun, LinearMap.coe_equivOfIsUnitDet]
  congr

section

open Subgroup Matrix Matrix.SpecialLinearGroup

variable {R : Type*} [CommRing R]

variable {V : Type*} [AddCommGroup V] [Module R V] [Module.Free R V] [Module.Finite R V]
variable {ι : Type*} [Fintype ι] [DecidableEq ι] (b : Module.Basis ι R V)

-- compare with `Matrix.SpecialLinearGroup.centerEquivRootsOfUnity`
-- TODO : golf!
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf30ad4eb34d16ce665df7db510553430114fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
