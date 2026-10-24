# PowerBasis.ofGenMemAdjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dce4f67f09ec5e912b704e2971a7f01fda4f9f996f5913c7187249ee2ba4bfdc",
  "kind": "def",
  "lexical_name": "PowerBasis.ofGenMemAdjoin",
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
  "slug": "powerbasis-ofgenmemadjoin--844626724d5b2e65b159fc78",
  "source": {
    "blob": "b212d3d246ecb1218921e7dd4acd97a576bd50d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 77,
    "path": "GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:844626724d5b2e65b159fc7854eb3ffbd652a032559674573ef9397c06e38c8a",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dce4f67f09ec5e912b704e2971a7f01fda4f9f996f5913c7187249ee2ba4bfdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PowerBasis.ofGenMemAdjoin {x : S} (B : PowerBasis K S) (hint : IsIntegral K x)
    (hx : B.gen ∈ adjoin K ({x} : Set S)) : PowerBasis K S :=
  (Algebra.adjoin.powerBasis hint).map <|
    (Subalgebra.equivOfEq _ _ <| PowerBasis.adjoin_eq_top_of_gen_mem_adjoin hx).trans
      Subalgebra.topEquiv
#align power_basis.of_gen_mem_adjoin PowerBasis.ofGenMemAdjoin

section IsIntegral

namespace PowerBasis

open Polynomial

open Polynomial

variable {R : Type*} [CommRing R] [Algebra R S] [Algebra R K] [IsScalarTower R K S]

variable {A : Type*} [CommRing A] [Algebra R A] [Algebra S A]

variable [IsScalarTower R S A] {B : PowerBasis S A} (hB : IsIntegral R B.gen)

/-- If `B : PowerBasis S A` is such that `IsIntegral R B.gen`, then
`IsIntegral R (B.basis.repr (B.gen ^ n) i)` for all `i` if
`minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)`. This is the case if `R` is a GCD domain
and `S` is its fraction ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b212d3d246ecb1218921e7dd4acd97a576bd50d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
