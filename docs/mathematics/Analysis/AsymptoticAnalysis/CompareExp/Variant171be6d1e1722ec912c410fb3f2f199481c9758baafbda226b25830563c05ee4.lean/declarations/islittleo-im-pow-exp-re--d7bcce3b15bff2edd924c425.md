# isLittleO_im_pow_exp_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0fcf579-2274-3774-14b1-4d015489bc7b",
  "kind": "theorem",
  "lexical_name": "isLittleO_im_pow_exp_re",
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
  "slug": "islittleo-im-pow-exp-re--d7bcce3b15bff2edd924c425",
  "source": {
    "blob": "87d0099e13f287e6a3ff104c8d4e5c90dc1514e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 119,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7bcce3b15bff2edd924c425b433dc4fd3f4c3b21182bb09c2e4c9d0235975de",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0fcf579-2274-3774-14b1-4d015489bc7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_im_pow_exp_re (hl : IsExpCmpFilter l) (n : ℕ) :
    (fun z : ℂ => z.im ^ n) =o[l] fun z => Real.exp z.re :=
  flip IsLittleO.of_pow two_ne_zero <|
    calc
      ((fun z : ℂ => (z.im ^ n)) ^ 2) = (fun z : ℂ => (z.im ^ n) ^ 2) := funext <| by simp
      _ = fun z => (Complex.im z) ^ (2 * n) := funext <| fun _ => by norm_cast; rw [pow_mul']
      _ =O[l] fun z => Real.exp z.re := by have := hl.isBigO_im_pow_re (2 * n); norm_cast at *
      _ = fun z => Real.exp z.re ^ 1 := funext <| fun _ => by norm_cast; rw [pow_one]
      _ =o[l] fun z => Real.exp z.re ^ 2 := by
        have := (isLittleO_pow_pow_atTop_of_lt one_lt_two).comp_tendsto <|
          Real.tendsto_exp_atTop.comp hl.tendsto_re
        simpa only [pow_one, Real.rpow_one, Real.rpow_two]
      _ = (fun z => Real.exp z.re) ^ 2 := funext <| by simp
#align complex.is_exp_cmp_filter.is_o_im_pow_exp_re Complex.IsExpCmpFilter.isLittleO_im_pow_exp_re

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d0099e13f287e6a3ff104c8d4e5c90dc1514e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
