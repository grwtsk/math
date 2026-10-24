# norm_le_pow_iff_mem_span_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f000e8f-89bc-5a81-07db-f0f0b15283c1",
  "kind": "theorem",
  "lexical_name": "norm_le_pow_iff_mem_span_pow",
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
  "slug": "norm-le-pow-iff-mem-span-pow--692c2178b3356b3b0b461f73",
  "source": {
    "blob": "5dffcbbec001150d67c0779b143f032447b20fe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 404,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variantb79b6524db25b3eb6baa489976975e4de5e8c8215a88006ca31ac55f7dc91f59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692c2178b3356b3b0b461f731af9e277da325e9d44462d13f5dbbb540dc1b95a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variantb79b6524db25b3eb6baa489976975e4de5e8c8215a88006ca31ac55f7dc91f59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f000e8f-89bc-5a81-07db-f0f0b15283c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_pow_iff_mem_span_pow (x : ℤ_[p]) (n : ℕ) :
    ‖x‖ ≤ (p : ℝ) ^ (-n : ℤ) ↔ x ∈ (Ideal.span {(p : ℤ_[p]) ^ n} : Ideal ℤ_[p]) := by
  by_cases hx : x = 0
  · subst hx
    simp only [norm_zero, zpow_neg, zpow_natCast, inv_nonneg, iff_true, Submodule.zero_mem]
    exact mod_cast Nat.zero_le _
  rw [norm_le_pow_iff_le_valuation x hx, mem_span_pow_iff_le_valuation x hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variantb79b6524db25b3eb6baa489976975e4de5e8c8215a88006ca31ac55f7dc91f59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variantb79b6524db25b3eb6baa489976975e4de5e8c8215a88006ca31ac55f7dc91f59.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dffcbbec001150d67c0779b143f032447b20fe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
