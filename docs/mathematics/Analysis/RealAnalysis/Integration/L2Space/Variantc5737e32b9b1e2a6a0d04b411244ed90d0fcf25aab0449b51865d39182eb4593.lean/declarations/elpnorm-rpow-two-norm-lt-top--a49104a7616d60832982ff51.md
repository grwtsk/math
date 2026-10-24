# eLpNorm_rpow_two_norm_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e0d3526db347b58cdd46fe666067be7e4fbe35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:230d95ad-11e1-6834-106c-a24f4ac9abfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d083edc0-52ac-f5ff-f20b-267d43a7ad95",
  "kind": "theorem",
  "lexical_name": "eLpNorm_rpow_two_norm_lt_top",
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
  "slug": "elpnorm-rpow-two-norm-lt-top--a49104a7616d60832982ff51",
  "source": {
    "blob": "77e0d3526db347b58cdd46fe666067be7e4fbe35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49104a7616d60832982ff513ee46f2c3f2d26a6f319540a8fa31e5cd18c90d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d083edc0-52ac-f5ff-f20b-267d43a7ad95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_rpow_two_norm_lt_top (f : Lp F 2 μ) :
    eLpNorm (fun x => ‖f x‖ ^ (2 : ℝ)) 1 μ < ∞ := by
  have h_two : ENNReal.ofReal (2 : ℝ) = 2 := by simp
  rw [eLpNorm_norm_rpow f (Lp.aestronglyMeasurable f) zero_lt_two, one_mul, h_two]
  exact ENNReal.rpow_lt_top_of_nonneg zero_le_two (Lp.eLpNorm_ne_top f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantc5737e32b9b1e2a6a0d04b411244ed90d0fcf25aab0449b51865d39182eb4593.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e0d3526db347b58cdd46fe666067be7e4fbe35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
