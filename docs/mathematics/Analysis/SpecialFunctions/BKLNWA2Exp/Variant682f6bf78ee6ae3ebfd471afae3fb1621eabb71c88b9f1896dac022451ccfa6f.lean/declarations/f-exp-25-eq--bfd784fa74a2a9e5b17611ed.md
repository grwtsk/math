# f_exp_25_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ddf82ab-237c-6860-66ae-25f9c25b20e3",
  "kind": "lemma",
  "lexical_name": "f_exp_25_eq",
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
  "slug": "f-exp-25-eq--bfd784fa74a2a9e5b17611ed",
  "source": {
    "blob": "7634a9e5fc82cb945fd67b14d17e174588f3ce7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd784fa74a2a9e5b17611ed4062b82c5076d1061a195ba7ae63e127e48c05fd",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ddf82ab-237c-6860-66ae-25f9c25b20e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma f_exp_25_eq : f (exp (25:ℝ)) =
    1 + exp (-25/12) + exp (-10/3) + exp (-25/6) + exp (-100/21) + exp (-125/24) + exp (-50/9) + exp (-35/6) + exp (-200/33) + exp (-25/4) + exp (-250/39) + exp (-275/42) + exp (-20/3) + exp (-325/48) + exp (-350/51) + exp (-125/18) + exp (-400/57) + exp (-85/12) + exp (-50/7) + exp (-475/66) + exp (-500/69) + exp (-175/24) + exp (-22/3) + exp (-575/78) + exp (-200/27) + exp (-625/84) + exp (-650/87) + exp (-15/2) + exp (-700/93) + exp (-725/96) + exp (-250/33) + exp (-775/102) + exp (-160/21) + exp (-275/36) := by
  unfold f
  rw [show ⌊log (exp (25:ℝ)) / log 2⌋₊ = 36 from by rw [log_exp]; exact floor_25]
  finsum_expand
  simp only [Nat.cast_ofNat, ← exp_mul]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7634a9e5fc82cb945fd67b14d17e174588f3ce7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
