# exp_sub_sum_range_isBigO_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c14a35d-e867-88de-3247-25e6b70832fd",
  "kind": "lemma",
  "lexical_name": "exp_sub_sum_range_isBigO_pow",
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
  "slug": "exp-sub-sum-range-isbigo-pow--f450d7fc5ff42b39baa4ea2c",
  "source": {
    "blob": "6292e48b94f7cf07b3bfcfcf263bcadc31717e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 171,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f450d7fc5ff42b39baa4ea2cbd6ca0231eefc616e0dc1c1f742034139641f093",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c14a35d-e867-88de-3247-25e6b70832fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exp_sub_sum_range_isBigO_pow (n : ℕ) :
    (fun x ↦ exp x - ∑ i ∈ Finset.range n, x ^ i / i !) =O[𝓝 0] (· ^ n) := by
  have := (Complex.exp_sub_sum_range_isBigO_pow n).comp_tendsto
    (Complex.continuous_ofReal.tendsto' 0 0 rfl)
  simp only [Function.comp_def] at this
  norm_cast at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6292e48b94f7cf07b3bfcfcf263bcadc31717e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
