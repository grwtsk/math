# tendsto_sub_mul_tsum_nat_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1fe12c4-b384-43e4-f449-cbfcdd4bdc98",
  "kind": "theorem",
  "lexical_name": "tendsto_sub_mul_tsum_nat_cpow",
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
  "slug": "tendsto-sub-mul-tsum-nat-cpow--27560e861134e0edc8e7ffed",
  "source": {
    "blob": "1373554596e115d890861eb6abf16a6bcc05dcb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27560e861134e0edc8e7ffed85e521d8277d1b84ab5398cc5c67535296b6ae67",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1fe12c4-b384-43e4-f449-cbfcdd4bdc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sub_mul_tsum_nat_cpow :
    Tendsto (fun s : ℂ ↦ (s - 1) * ∑' (n : ℕ), 1 / (n : ℂ) ^ s) (𝓝[{s | 1 < re s}] 1) (𝓝 1) := by
  refine (tendsto_nhdsWithin_mono_left ?_ riemannZeta_residue_one).congr' ?_
  · simp only [subset_compl_singleton_iff, mem_setOf_eq, one_re, not_lt, le_refl]
  · filter_upwards [eventually_mem_nhdsWithin] with s hs using
      congr_arg _ <| zeta_eq_tsum_one_div_nat_cpow hs

/-- The residue of `ζ(s)` at `s = 1` is equal to 1 expressed using `tsum` and for a
real variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant1c471a94e5a3831fd19a704385a31088d43b48fe82c290bcffd3f429d0fb46c2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1373554596e115d890861eb6abf16a6bcc05dcb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
