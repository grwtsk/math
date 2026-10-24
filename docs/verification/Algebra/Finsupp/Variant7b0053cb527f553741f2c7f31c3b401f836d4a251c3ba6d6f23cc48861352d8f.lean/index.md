# Verification target: GRWTSK.Algebra.Finsupp.Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c342e33f3597fec681da8c05134f81130c5fd0d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c342e33f3597fec681da8c05134f81130c5fd0d`.

Source path: `GRWTSK/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppAntidiag](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag--37e7f3cfeee0315204b21263.md) | 53 | `declaration-track:37e7f3cfeee0315204b21263b7c77fdaf67bd8eb42c3a4bbc8728f3426b98602` |
| 2 | `lemma` | [mem_finsuppAntidiag](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/mem-finsuppantidiag--c27a92b3dd9fe316b17e9fa7.md) | 57 | `result-track:c27a92b3dd9fe316b17e9fa708c4a329fdfe032bfc909d68caa45895843a3317` |
| 3 | `lemma` | [mem_finsuppAntidiag'](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/mem-finsuppantidiag--0163bc4c24546ba881d0ca67.md) | 60 | `result-track:0163bc4c24546ba881d0ca67dbf2dbe3f83d7b63fc570b7c4ef9c97028c6e91c` |
| 4 | `lemma` | [finsuppAntidiag_empty_zero](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag-empty-zero--c8600d602a181786fc940fc6.md) | 66 | `result-track:c8600d602a181786fc940fc6b0ff9940325990c9505f2de12cd6619de825d32d` |
| 5 | `lemma` | [finsuppAntidiag_empty_of_ne_zero](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag-empty-of-ne-zero--cfde3653ad717b86bfae918b.md) | 69 | `result-track:cfde3653ad717b86bfae918ba6db3ae2fd0b0332c25f43b008425d85835ba058` |
| 6 | `lemma` | [finsuppAntidiag_empty](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag-empty--b7bf04dfb8a0cc33e35d928b.md) | 73 | `result-track:b7bf04dfb8a0cc33e35d928b87ec30dd02aa8eb39543467a82423767fa5f3695` |
| 7 | `theorem` | [mem_finsuppAntidiag_insert](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/mem-finsuppantidiag-insert--6cd46e1f919bf6cc99c6991a.md) | 76 | `result-track:6cd46e1f919bf6cc99c6991a61122832da1cf76a1c1d7f7fea6534431bd71572` |
| 8 | `theorem` | [finsuppAntidiag_insert](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag-insert--db6804e4b54c0c1eb0811c98.md) | 100 | `result-track:db6804e4b54c0c1eb0811c985c1c5fa24ef353fe2068f40d985bbf542492229e` |
| 9 | `theorem` | [finsuppAntidiag_mono](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag-mono--0e3635b16d63487a11e3fd55.md) | 121 | `result-track:0e3635b16d63487a11e3fd55d46f8c2fe860e61502eee9bee611b2517b0f2877` |
| 10 | `lemma` | [mapRange_finsuppAntidiag_subset](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/maprange-finsuppantidiag-subset--1969f4c2b3d93e5e049a2fa9.md) | 132 | `result-track:1969f4c2b3d93e5e049a2fa9b07b5d28ca408aadb888c6fe3c01109fe124739d` |
| 11 | `lemma` | [mapRange_finsuppAntidiag_eq](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/maprange-finsuppantidiag-eq--1a39151414c132a18377d526.md) | 143 | `result-track:1a39151414c132a18377d526dd2e2ef4368cba590c2895391c5ef1163aaa97d6` |
| 12 | `lemma` | [finsuppAntidiag_zero](../../../../mathematics/Algebra/Finsupp/Variant7b0053cb527f553741f2c7f31c3b401f836d4a251c3ba6d6f23cc48861352d8f.lean/declarations/finsuppantidiag-zero--25714387b7e329939a177b54.md) | 165 | `result-track:25714387b7e329939a177b54cbbc34154ade58953c9f9ca4ceba1bbc3a1c62f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
