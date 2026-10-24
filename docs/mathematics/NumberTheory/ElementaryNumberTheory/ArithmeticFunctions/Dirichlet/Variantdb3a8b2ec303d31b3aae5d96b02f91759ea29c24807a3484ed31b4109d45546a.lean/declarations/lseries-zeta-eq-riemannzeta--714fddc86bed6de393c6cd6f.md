# LSeries_zeta_eq_riemannZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfb77027-2103-4217-4fff-b7292d24c58d",
  "kind": "lemma",
  "lexical_name": "LSeries_zeta_eq_riemannZeta",
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
  "slug": "lseries-zeta-eq-riemannzeta--714fddc86bed6de393c6cd6f",
  "source": {
    "blob": "b7984b0fafec4b2c29dce79616ef7908cd51ba9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 286,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:714fddc86bed6de393c6cd6f6a484444cbabd5f83b5fb0ecdd308cc81745224e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfb77027-2103-4217-4fff-b7292d24c58d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_zeta_eq_riemannZeta {s : ℂ} (hs : 1 < s.re) : L ↗ζ s = riemannZeta s := by
  suffices ∑' n, term (fun n ↦ if n = 0 then 0 else 1) s n = ∑' n : ℕ, 1 / (n : ℂ) ^ s by
    simpa [LSeries, zeta_eq_tsum_one_div_nat_cpow hs]
  refine tsum_congr fun n ↦ ?_
  rcases eq_or_ne n 0 with hn | hn <;>
  simp [hn, ne_zero_of_one_lt_re hs]

/-- The L-series of the arithmetic function `ζ` equals the Riemann Zeta Function on its
domain of convergence `1 < re s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Dirichlet/Variantdb3a8b2ec303d31b3aae5d96b02f91759ea29c24807a3484ed31b4109d45546a.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7984b0fafec4b2c29dce79616ef7908cd51ba9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
