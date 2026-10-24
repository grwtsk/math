# map_C_comap_of_comap_eq_leadingCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9891f986-ea3d-850e-f33c-c5e0b80230a0",
  "kind": "lemma",
  "lexical_name": "map_C_comap_of_comap_eq_leadingCoeff",
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
  "slug": "map-c-comap-of-comap-eq-leadingcoeff--486a909d7d37e911725beeb0",
  "source": {
    "blob": "f4e78e4f0790433c5783700db0206dfab2212462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 638,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:486a909d7d37e911725beeb0a456e47f10d5599f9012ee333d50268378710507",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9891f986-ea3d-850e-f33c-c5e0b80230a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_C_comap_of_comap_eq_leadingCoeff (I : Ideal R[X]) (hI : comap C I = I.leadingCoeff) :
    map C (comap C I) = I := by
  refine le_antisymm map_comap_le (fun f hfI ↦ ?_)
  induction hn : f.natDegree using Nat.strong_induction_on generalizing f with | _ _ ih
  have h : C f.leadingCoeff * X ^ f.natDegree ∈ map C (comap C I) :=
    (map C (comap C I)).mul_mem_right (X ^ f.natDegree) <| mem_map_of_mem C <| by
      simpa [hI] using (I.mem_leadingCoeff f.leadingCoeff).2 ⟨f, hfI, rfl⟩
  rcases f.eraseLead_natDegree_lt_or_eraseLead_eq_zero with hlt | hzero
  · have he : f.eraseLead ∈ I := by simpa using I.sub_mem hfI (map_comap_le h)
    simpa using (map C (comap C I)).add_mem (ih _ (by simpa [hn] using hlt) _ he rfl) h
  · rwa [← f.eraseLead_add_C_mul_X_pow, hzero, zero_add]

end CommRing

end Ideal

section Ideal

open Submodule Set

variable [Semiring R] {f : R[X]} {I : Ideal R[X]}

/-- If the coefficients of a polynomial belong to an ideal, then that ideal contains
the ideal spanned by the coefficients of the polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e78e4f0790433c5783700db0206dfab2212462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
