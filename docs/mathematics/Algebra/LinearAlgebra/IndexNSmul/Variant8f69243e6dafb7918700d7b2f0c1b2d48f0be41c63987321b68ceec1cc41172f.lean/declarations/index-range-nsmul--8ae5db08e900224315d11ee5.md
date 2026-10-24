# index_range_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a3feeda-3dac-2bdd-b4b8-8d7e2c92889f",
  "kind": "lemma",
  "lexical_name": "index_range_nsmul",
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
  "slug": "index-range-nsmul--8ae5db08e900224315d11ee5",
  "source": {
    "blob": "b265510e0eae62cccf7cb9140bb0d9a4aefa2717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae5db08e900224315d11ee5087038d66bd8adfe37930fb84fed22be29194fff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a3feeda-3dac-2bdd-b4b8-8d7e2c92889f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma index_range_nsmul [Free ℤ M] [Module.Finite ℤ M] (n : ℕ) :
    (nsmulAddMonoidHom (α := M) n).range.index = n ^ finrank ℤ M :=
  calc
    _ = (nsmulAddMonoidHom (α := (Fin (finrank ℤ M) → ℤ)) n).range.index := by
      simpa [AddEquiv.map_range_nsmulAddMonoidHom]
        using (index_map_equiv (nsmulAddMonoidHom (α := M) n).range
                (Module.finBasis ℤ M).equivFun.toAddEquiv).symm
    _ = _ := by
      simp [index_eq_card, Nat.card_congr (addEquivPiModRangeNSMulAddMonoidHom _ n).toEquiv,
        Nat.card_fun, Int.range_nsmulAddMonoidHom,
        Nat.card_congr (Int.quotientZMultiplesNatEquivZMod n).toEquiv]

/-- The relative index in `S` of the image of the multiplication-by-`n` map
on an additive subgroup `S` of an additive group such that `S` is free
and finitely generated as a `ℤ`-module is `n ^ finrank ℤ S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IndexNSmul/Variant8f69243e6dafb7918700d7b2f0c1b2d48f0be41c63987321b68ceec1cc41172f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b265510e0eae62cccf7cb9140bb0d9a4aefa2717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
