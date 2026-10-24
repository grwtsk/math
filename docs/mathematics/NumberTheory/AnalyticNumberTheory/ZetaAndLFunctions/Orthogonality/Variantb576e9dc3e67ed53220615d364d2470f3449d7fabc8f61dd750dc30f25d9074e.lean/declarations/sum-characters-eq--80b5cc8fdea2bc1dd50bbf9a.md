# sum_characters_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d382a0-7b84-d6d3-3bf1-627db15eeb19",
  "kind": "theorem",
  "lexical_name": "sum_characters_eq",
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
  "slug": "sum-characters-eq--80b5cc8fdea2bc1dd50bbf9a",
  "source": {
    "blob": "6e155a7fb886f203dd19074f8ec88d57171289ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b5cc8fdea2bc1dd50bbf9a34c34de13b98559436bd78cbc7b41c7c71798791",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d382a0-7b84-d6d3-3bf1-627db15eeb19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_characters_eq (a : ZMod n) :
    ∑ χ : DirichletCharacter R n, χ a = if a = 1 then (n.totient : R) else 0 := by
  split_ifs with ha
  · simpa only [ha, map_one, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, mul_one,
      ← Nat.card_eq_fintype_card]
      using congrArg Nat.cast <| card_eq_totient_of_hasEnoughRootsOfUnity R n
  · exact sum_characters_eq_zero R ha

/-- If `R` is an integral domain that has enough roots of unity and `n ≠ 0`, then for `a` and `b`
in `ZMod n` with `a` a unit, the sum of `χ a⁻¹ * χ b` over all Dirichlet characters
mod `n` with values in `R` vanishes if `a ≠ b` and has the value `n.totient` if `a = b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantb576e9dc3e67ed53220615d364d2470f3449d7fabc8f61dd750dc30f25d9074e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e155a7fb886f203dd19074f8ec88d57171289ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
