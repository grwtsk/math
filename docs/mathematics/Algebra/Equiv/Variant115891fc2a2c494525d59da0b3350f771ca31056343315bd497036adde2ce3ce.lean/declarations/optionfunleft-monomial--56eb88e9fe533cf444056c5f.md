# optionFunLeft_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05dd21ac-ad3d-ccaa-0cdd-c2c942491387",
  "kind": "theorem",
  "lexical_name": "optionFunLeft_monomial",
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
  "slug": "optionfunleft-monomial--56eb88e9fe533cf444056c5f",
  "source": {
    "blob": "ac6c911d76d886934f8428c5a503f9d5b20dd41d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 84,
    "path": "GRWTSK/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56eb88e9fe533cf444056c5ff02fbdab561cbdf36de0887cfb77ac79ae6ca58c",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05dd21ac-ad3d-ccaa-0cdd-c2c942491387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem optionFunLeft_monomial (x : Option σ →₀ ℕ) (r : R) :
    optionFunLeft σ R (monomial x r) = PowerSeries.monomial (x none) (monomial x.some r) := by
  classical
  ext n y
  rw [PowerSeries.coeff_monomial, coeff_coeff_optionFunLeft, coeff_monomial]
  split_ifs with h1 h2 h3
  · simp [← h1]
  · absurd h2
    rw [← optionElim_apply_none n, h1]
  · replace h1 : ¬ y = x.some := fun h ↦ by
      absurd h1; ext u
      cases u <;> simp_all
    rw [coeff_monomial, ite_eq_right h1]
  · rw [coeff_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6c911d76d886934f8428c5a503f9d5b20dd41d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
