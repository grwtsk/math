# error_at_first_atom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfd0d080-4f5a-f159-4a91-cf281a60df4d",
  "kind": "theorem",
  "lexical_name": "error_at_first_atom",
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
  "slug": "error-at-first-atom--6effc3cb0c20193e9a1b0991",
  "source": {
    "blob": "e669f5308458bcb1c8bbb7b003ba624f3c99d394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6effc3cb0c20193e9a1b09915f46311f69e57a8f9fbaf4b77e40781c46eb2206",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfd0d080-4f5a-f159-4a91-cf281a60df4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem error_at_first_atom : mangoldtLogError (Real.log 2) = -Real.log 2 / 2 := by
  unfold mangoldtLogError mangoldtLogPrefix weightedMangoldt
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  norm_num only [Nat.floor_natCast]
  rw [show Finset.Ioc (0 : ℕ) 2 = {1, 2} by decide]
  simp only [Finset.sum_insert, Finset.mem_singleton, Nat.reduceEqDiff, not_false_eq_true,
    Finset.sum_singleton, vonMangoldt_apply_one, zero_div, zero_add,
    vonMangoldt_apply_prime Nat.prime_two, Nat.cast_ofNat]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRawPsiPrimitiveAdapter/Variant2eeb0caf5a473b52976eeec9f294cb67a6d137dd4897444ac76b08d98149ec8e.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e669f5308458bcb1c8bbb7b003ba624f3c99d394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
