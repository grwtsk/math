# sourceBump_square_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a10ef9fd-83ec-dcae-3ca2-d70104d52ab4",
  "kind": "theorem",
  "lexical_name": "sourceBump_square_integral",
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
  "slug": "sourcebump-square-integral--89b505e04344ecda8877c438",
  "source": {
    "blob": "7fd70d2b0216049f83e279f224d47d95452642c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b505e04344ecda8877c4383a0e4ac0bb3590b7988065f35231dde288b5e2ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a10ef9fd-83ec-dcae-3ca2-d70104d52ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceBump_square_integral :
    (∫ x : ℝ, sourceBump x ^ 2) = (65536 / 109395 : ℝ) := by
  have heq : (fun x : ℝ ↦ sourceBump x ^ 2) =
      (Icc (-1) 1).indicator (fun x ↦ unitBump x ^ 2) := by
    rw [sourceBump_eq_indicator]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [heq, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitBump_square_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fd70d2b0216049f83e279f224d47d95452642c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
