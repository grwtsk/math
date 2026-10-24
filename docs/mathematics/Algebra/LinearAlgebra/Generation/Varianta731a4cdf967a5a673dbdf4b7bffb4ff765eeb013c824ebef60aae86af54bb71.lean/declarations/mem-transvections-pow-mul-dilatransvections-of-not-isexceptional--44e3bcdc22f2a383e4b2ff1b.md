# mem_transvections_pow_mul_dilatransvections_of_not_isExceptional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecb2411b-9fc2-9b62-b79d-ad08a5ba9455",
  "kind": "theorem",
  "lexical_name": "mem_transvections_pow_mul_dilatransvections_of_not_isExceptional",
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
  "slug": "mem-transvections-pow-mul-dilatransvections-of-not-isexceptional--44e3bcdc22f2a383e4b2ff1b",
  "source": {
    "blob": "25f131af9a73adb314d09ac209d2f389d8587063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 495,
    "path": "GRWTSK/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e3bcdc22f2a383e4b2ff1b121cf4ae60e0e4077d86d2ac5248c69da40f68bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecb2411b-9fc2-9b62-b79d-ad08a5ba9455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_transvections_pow_mul_dilatransvections_of_not_isExceptional
    {e : V ≃ₗ[K] V} (he : ¬ IsExceptional e) :
    e ∈ transvections K V ^ (finrank K (V ⧸ e.fixedSubmodule) - 1) * dilatransvections K V := by
  simp only [not_and_or] at he
  push Not at he
  rcases he with he | he | he
  · simpa [Nat.sub_eq_zero_of_le he, mem_dilatransvections_iff_finrank_quotient] using he
  · exact mem_transvections_pow_mul_dilatransvections_of_fixedReduce_eq_one he
  · exact mem_transvections_pow_mul_dilatransvections_of_fixedReduce_ne_smul_id he

end LinearEquiv

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Generation/Varianta731a4cdf967a5a673dbdf4b7bffb4ff765eeb013c824ebef60aae86af54bb71.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f131af9a73adb314d09ac209d2f389d8587063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
