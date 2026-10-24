# conv_lambda_sq_larger_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9d2f6ec-13c9-7ac6-08a0-5f18d0fc7c86",
  "kind": "theorem",
  "lexical_name": "conv_lambda_sq_larger_sum",
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
  "slug": "conv-lambda-sq-larger-sum--c79fe1f2aa8d371acdec2965",
  "source": {
    "blob": "10d55acd9197d90dc9f0062eacd7e0056f0eb3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 50,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c79fe1f2aa8d371acdec29656e62fd17478d5e84e40fb796e75b3103b57fbf52",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9d2f6ec-13c9-7ac6-08a0-5f18d0fc7c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conv_lambda_sq_larger_sum (f : ℕ → ℕ → ℕ → ℝ) (n : ℕ) :
    (∑ d ∈ n.divisors,
        ∑ d1 ∈ d.divisors,
          ∑ d2 ∈ d.divisors, if d = Nat.lcm d1 d2 then f d1 d2 d else 0) =
      ∑ d ∈ n.divisors,
        ∑ d1 ∈ n.divisors,
          ∑ d2 ∈ n.divisors, if d = Nat.lcm d1 d2 then f d1 d2 d else 0 := by
  apply sum_congr rfl; intro d hd
  rw [mem_divisors] at hd
  simp_rw [←Nat.divisors_filter_dvd_of_dvd hd.2 hd.1, sum_filter, ←ite_and, ite_sum_zero,
    ←ite_and]
  congr with d1
  congr with d2
  congr
  rw [eq_iff_iff]
  refine ⟨fun ⟨_, _, h⟩ ↦ h, ?_⟩
  rintro rfl
  exact ⟨Nat.dvd_lcm_left d1 d2, Nat.dvd_lcm_right d1 d2, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10d55acd9197d90dc9f0062eacd7e0056f0eb3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
