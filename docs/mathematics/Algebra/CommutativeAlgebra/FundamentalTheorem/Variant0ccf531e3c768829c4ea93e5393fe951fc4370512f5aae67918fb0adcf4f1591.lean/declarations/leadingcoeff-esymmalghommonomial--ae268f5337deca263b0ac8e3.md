# leadingCoeff_esymmAlgHomMonomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af7e18c2-c996-4e0d-7f51-9e9ae8410129",
  "kind": "lemma",
  "lexical_name": "leadingCoeff_esymmAlgHomMonomial",
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
  "slug": "leadingcoeff-esymmalghommonomial--ae268f5337deca263b0ac8e3",
  "source": {
    "blob": "b4be8cfbca1a6bdec3f250a361ad1bb296ad05c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 226,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae268f5337deca263b0ac8e372e956b7674b523821e726b44337929431c53888",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7e18c2-c996-4e0d-7f51-9e9ae8410129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leadingCoeff_esymmAlgHomMonomial (t : Fin n →₀ ℕ) (hnm : n ≤ m) :
    leadingCoeff toLex (esymmAlgHomMonomial (Fin m) t r) = r := by
  induction t using Finsupp.induction₂ with
  | zero => rw [esymmAlgHom_zero, leadingCoeff_toLex_C]
  | add_single i _ _ _ _ ih =>
    rw [esymmAlgHomMonomial_add, esymmAlgHomMonomial_single_one,
        ((monic_esymm <| i.2.trans_le hnm).pow toLex_add toLex.injective).leadingCoeff_mul_eq_left,
        ih]
    exacts [toLex.injective, toLex_add]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant0ccf531e3c768829c4ea93e5393fe951fc4370512f5aae67918fb0adcf4f1591.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4be8cfbca1a6bdec3f250a361ad1bb296ad05c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
