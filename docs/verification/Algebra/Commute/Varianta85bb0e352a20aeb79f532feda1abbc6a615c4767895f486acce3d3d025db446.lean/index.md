# Verification target: GRWTSK.Algebra.Commute.Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f81cd57cbefe54cd74f4eaaf89f1328391ccdaa",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f81cd57cbefe54cd74f4eaaf89f1328391ccdaa`.

Source path: `GRWTSK/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_commute](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/cast-commute--a86deb0fe5e5664b1d59621c.md) | 30 | `result-track:a86deb0fe5e5664b1d59621ccceb1ff37314bc76b4ef61620f254319beb7132d` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.Commute.ofNat_left](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/root-grwtsk-algebra-castcommute-variantb20927d696a2e482835c18189505ad665--37e17bea02f3979a9433f56e.md) | 35 | `result-track:37e17bea02f3979a9433f56eaa2822080760b1afc1abbe6de0e1d57294752e0e` |
| 3 | `theorem` | [cast_comm](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/cast-comm--a486364adbb4aa34d18be6ce.md) | 38 | `result-track:a486364adbb4aa34d18be6ce68dd6a092e64d3e5512942dea463ab7badc48ad0` |
| 4 | `theorem` | [commute_cast](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/commute-cast--0a88f2574b69a0140d50604f.md) | 41 | `result-track:0a88f2574b69a0140d50604fe9cb25ed10435cb30b828b143a78608dc7a870a3` |
| 5 | `theorem` | [_root_.GRWTSK.Algebra.CastCommute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.Commute.ofNat_right](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/root-grwtsk-algebra-castcommute-variantb20927d696a2e482835c18189505ad665--3e2a808299f6e3e332ee5d94.md) | 44 | `result-track:3e2a808299f6e3e332ee5d9434baa20e43582c70a77e90c9340d0a3709adb27e` |
| 6 | `lemma` | [natCast_mul_right](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-right--1ccaad45aa0867b0aa1fceab.md) | 54 | `result-track:1ccaad45aa0867b0aa1fceababd29ec36a53a4d81654c5c3ef40e9ca63a9dfa4` |
| 7 | `lemma` | [natCast_mul_left](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-left--d8013d566efbcbe0be00f4b7.md) | 58 | `result-track:d8013d566efbcbe0be00f4b7efd30f7023dc58ad059ff76f94760958854141ea` |
| 8 | `lemma` | [natCast_mul_natCast_mul](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-natcast-mul--2006db7b283a176d9887b020.md) | 61 | `result-track:2006db7b283a176d9887b020085b4b48519f2513567a5e3273e152d7c4bce6ab` |
| 9 | `lemma` | [natCast_mul_right](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-right--1376a9fea5b73fdf9d9042f4.md) | 70 | `result-track:1376a9fea5b73fdf9d9042f4a0c2c36fa82d5c2645a5077b785cc751dbbebb28` |
| 10 | `lemma` | [natCast_mul_left](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-left--5d6d616097ed9e3351bfc467.md) | 73 | `result-track:5d6d616097ed9e3351bfc467a862b0bf03f59532c5b9ec1b19d15627f06dfb98` |
| 11 | `lemma` | [natCast_mul_natCast_mul](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-natcast-mul--2a8cd7e5a58bc1b4b0efae21.md) | 76 | `result-track:2a8cd7e5a58bc1b4b0efae2167580d332ea06c3924d6b954e9034c89898fd196` |
| 12 | `lemma` | [self_natCast_mul](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/self-natcast-mul--92cdae487e7a7744920d4cb8.md) | 81 | `result-track:92cdae487e7a7744920d4cb86044d68db44cb710a4cf1190e6e5f1a0aa605199` |
| 13 | `lemma` | [natCast_mul_self](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/natcast-mul-self--54dbaff440f616e321e4f210.md) | 83 | `result-track:54dbaff440f616e321e4f210ebfe5673d4beae2751bedb97709fba063626b712` |
| 14 | `lemma` | [self_natCast_mul_natCast_mul](../../../../mathematics/Algebra/Commute/Varianta85bb0e352a20aeb79f532feda1abbc6a615c4767895f486acce3d3d025db446.lean/declarations/self-natcast-mul-natcast-mul--c4a1585e674b676504b74cda.md) | 85 | `result-track:c4a1585e674b676504b74cdaead77903293131f1dbb4468ae288ba22761f6353` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
