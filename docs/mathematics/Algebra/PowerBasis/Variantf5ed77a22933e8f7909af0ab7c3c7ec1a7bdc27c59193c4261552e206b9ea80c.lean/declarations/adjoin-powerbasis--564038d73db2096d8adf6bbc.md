# adjoin.powerBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8b5e2c08f66f389c0bdbf2046f41f166a4047433cd1deb10a30de0889177f03",
  "kind": "def",
  "lexical_name": "adjoin.powerBasis",
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
  "slug": "adjoin-powerbasis--564038d73db2096d8adf6bbc",
  "source": {
    "blob": "ea84f5e04d127797b96e535ffaa546ca20b03ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:564038d73db2096d8adf6bbc976aa8cbfbc990f023356ea13135fa93ec575908",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8b5e2c08f66f389c0bdbf2046f41f166a4047433cd1deb10a30de0889177f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def adjoin.powerBasis {x : S} (hx : IsIntegral K x) :
    PowerBasis K (adjoin K ({x} : Set S)) where
  gen := ⟨x, subset_adjoin (Set.mem_singleton x)⟩
  dim := (minpoly K x).natDegree
  basis := adjoin.powerBasisAux hx
  basis_eq_pow i := by rw [adjoin.powerBasisAux, Basis.mk_apply]
#align algebra.adjoin.power_basis Algebra.adjoin.powerBasis

end Algebra

open Algebra

/-- The power basis given by `x` if `B.gen ∈ adjoin K {x}`. See `PowerBasis.ofGenMemAdjoin'`
for a version over a more general base ring. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variantf5ed77a22933e8f7909af0ab7c3c7ec1a7bdc27c59193c4261552e206b9ea80c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea84f5e04d127797b96e535ffaa546ca20b03ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
