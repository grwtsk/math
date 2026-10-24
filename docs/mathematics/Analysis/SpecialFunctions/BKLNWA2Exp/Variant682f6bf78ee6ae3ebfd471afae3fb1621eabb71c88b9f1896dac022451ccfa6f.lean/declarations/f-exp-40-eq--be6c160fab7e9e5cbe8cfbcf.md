# f_exp_40_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81831cd7-cd1b-3400-62f9-6cb121a3b403",
  "kind": "lemma",
  "lexical_name": "f_exp_40_eq",
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
  "slug": "f-exp-40-eq--be6c160fab7e9e5cbe8cfbcf",
  "source": {
    "blob": "7634a9e5fc82cb945fd67b14d17e174588f3ce7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be6c160fab7e9e5cbe8cfbcfc41f899112eb1c3943a5ec43eb60996eeb30f419",
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

Occurrence: `result:81831cd7-cd1b-3400-62f9-6cb121a3b403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma f_exp_40_eq : f (exp (40:ℝ)) =
    1 + exp (-10/3) + exp (-16/3) + exp (-20/3) + exp (-160/21) + exp (-25/3) + exp (-80/9) + exp (-28/3) + exp (-320/33) + exp (-10) + exp (-400/39) + exp (-220/21) + exp (-32/3) + exp (-65/6) + exp (-560/51) + exp (-100/9) + exp (-640/57) + exp (-34/3) + exp (-80/7) + exp (-380/33) + exp (-800/69) + exp (-35/3) + exp (-176/15) + exp (-460/39) + exp (-320/27) + exp (-250/21) + exp (-1040/87) + exp (-12) + exp (-1120/93) + exp (-145/12) + exp (-400/33) + exp (-620/51) + exp (-256/21) + exp (-110/9) + exp (-1360/111) + exp (-700/57) + exp (-160/13) + exp (-37/3) + exp (-1520/123) + exp (-260/21) + exp (-1600/129) + exp (-410/33) + exp (-112/9) + exp (-860/69) + exp (-1760/141) + exp (-25/2) + exp (-1840/147) + exp (-188/15) + exp (-640/51) + exp (-490/39) + exp (-2000/159) + exp (-340/27) + exp (-416/33) + exp (-265/21) + exp (-240/19) := by
  unfold f
  rw [show ⌊log (exp (40:ℝ)) / log 2⌋₊ = 57 from by rw [log_exp]; exact floor_40]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2Exp/Variant682f6bf78ee6ae3ebfd471afae3fb1621eabb71c88b9f1896dac022451ccfa6f.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7634a9e5fc82cb945fd67b14d17e174588f3ce7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
