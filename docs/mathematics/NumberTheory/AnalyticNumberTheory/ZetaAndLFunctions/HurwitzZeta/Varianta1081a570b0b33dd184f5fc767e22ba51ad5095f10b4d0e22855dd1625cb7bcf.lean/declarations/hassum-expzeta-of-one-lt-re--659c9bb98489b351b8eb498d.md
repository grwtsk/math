# hasSum_expZeta_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffaa8980-eff4-d7f6-064a-b70c6f9204ce",
  "kind": "lemma",
  "lexical_name": "hasSum_expZeta_of_one_lt_re",
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
  "slug": "hassum-expzeta-of-one-lt-re--659c9bb98489b351b8eb498d",
  "source": {
    "blob": "309d890d816b4df2033c53921061c2a3f207fbcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:659c9bb98489b351b8eb498d2827b86a46f4da248c93134439c6362c259d6d04",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffaa8980-eff4-d7f6-064a-b70c6f9204ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_expZeta_of_one_lt_re (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℕ ↦ cexp (2 * π * I * a * n) / n ^ s) (expZeta a s) := by
  convert! (hasSum_nat_cosZeta a hs).add ((hasSum_nat_sinZeta a hs).mul_left I) using 1
  ext1 n
  simp only [mul_right_comm _ I, ← cos_add_sin_I, push_cast]
  rw [add_div, mul_div, mul_comm _ I]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Varianta1081a570b0b33dd184f5fc767e22ba51ad5095f10b4d0e22855dd1625cb7bcf.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309d890d816b4df2033c53921061c2a3f207fbcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
