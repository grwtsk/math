# paired_eta_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ea2b1cd-0b30-5e1b-c0e0-1bd70ec45b69",
  "kind": "theorem",
  "lexical_name": "paired_eta_identity",
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
  "slug": "paired-eta-identity--b795a6546f460a74571a3790",
  "source": {
    "blob": "28c18f45d502ff45cbc1c56f2869c8e2aa0fff86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 211,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b795a6546f460a74571a3790d36fa2aa596d01d6a983ab283b593dd94da3439a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ea2b1cd-0b30-5e1b-c0e0-1bd70ec45b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_eta_identity : PairedEtaIdentityObligation := by
  intro s hs0 hs1
  have hz1 : (s : ℂ) ≠ 1 := by exact_mod_cast ne_of_lt hs1
  have hs : 0 < (s : ℂ).re := hs0
  have hsum := Complex.hasSum_re (pair_summable hs).hasSum
  change HasSum (fun n ↦ (pair (s : ℂ) n).re) (eta (s : ℂ)).re at hsum
  rw [eta_eq_zeta hs hz1] at hsum
  have hc : (1 - (2 : ℂ) ^ (1 - (s : ℂ))) = ((1 - (2 : ℝ) ^ (1 - s) : ℝ) : ℂ) := by
    rw [ofReal_sub, ofReal_one, ofReal_cpow (by norm_num)]
    simp only [ofReal_sub, ofReal_one, ofReal_ofNat]
  simpa only [pair_ofReal, ofReal_re, hc, mul_re, ofReal_re, ofReal_im, zero_mul, sub_zero]
    using hsum

/-- The positive paired numerator rules out actual real zeta zeros on the open unit interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c18f45d502ff45cbc1c56f2869c8e2aa0fff86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
