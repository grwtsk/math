# factorial_coe_dvd_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab453981-6500-5bfd-c876-af57a93e9a6d",
  "kind": "lemma",
  "lexical_name": "factorial_coe_dvd_prod",
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
  "slug": "factorial-coe-dvd-prod--71e5805f388dde5b7878e221",
  "source": {
    "blob": "ddd4fa963a78f1ac6050b4b80f41bdb41a56e0eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71e5805f388dde5b7878e22147c2248241705e4342982e036c19ab0e3ff73710",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab453981-6500-5bfd-c876-af57a93e9a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorial_coe_dvd_prod (k : ℕ) (n : ℤ) : (k ! : ℤ) ∣ ∏ i ∈ range k, (n + i) := by
  rw [Int.dvd_iff_emod_eq_zero, Finset.prod_int_mod]
  simp_rw [← Int.emod_add_emod n]
  have hn : 0 ≤ n % k ! := Int.emod_nonneg n <| Int.natCast_ne_zero.mpr k.factorial_ne_zero
  obtain ⟨x, hx⟩ := Int.eq_ofNat_of_zero_le hn
  have hdivk := x.factorial_dvd_ascFactorial k
  zify [x.ascFactorial_eq_prod_range k] at hdivk
  rwa [← Finset.prod_int_mod, ← Int.dvd_iff_emod_eq_zero, hx]

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantad0a842f38d37887114b61cdb9e104df154a4e135eb3c750c41cc2c1a10225ad.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddd4fa963a78f1ac6050b4b80f41bdb41a56e0eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
