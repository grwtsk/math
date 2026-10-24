# coeff_toMvPowerSeries_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e96cc84f-c2fc-db71-cb8d-b20391d6942a",
  "kind": "theorem",
  "lexical_name": "coeff_toMvPowerSeries_symm",
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
  "slug": "coeff-tomvpowerseries-symm--343e18fbf4d4e5b3646c2e7b",
  "source": {
    "blob": "57005f97f438501ab75a2b845acd06e62d53c11d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 198,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:343e18fbf4d4e5b3646c2e7b50bab8d95bc3619b35a0e9d7fd099946ed4b10f9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96cc84f-c2fc-db71-cb8d-b20391d6942a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_toMvPowerSeries_symm {f : MvPowerSeries σ R} {n : σ →₀ ℕ} :
    (HahnSeries.toMvPowerSeries.symm f).coeff n = MvPowerSeries.coeff n f :=
  rfl

end Semiring

section Algebra

variable (R) [CommSemiring R] {A : Type*} [Semiring A] [Algebra R A]

/-- The `R`-algebra `A⟦ℕ⟧` is isomorphic to `PowerSeries A`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57005f97f438501ab75a2b845acd06e62d53c11d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
