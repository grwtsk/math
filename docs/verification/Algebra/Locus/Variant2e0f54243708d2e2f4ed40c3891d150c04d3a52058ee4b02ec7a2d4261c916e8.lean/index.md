# Verification target: GRWTSK.Algebra.Locus.Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f242aa6cf16a9d24789a5a974672df8834eda49e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f242aa6cf16a9d24789a5a974672df8834eda49e`.

Source path: `GRWTSK/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.InvSubmonoid` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isunramifiedat--d88e152109c52272e437c658.md) | 53 | `declaration-track:d88e152109c52272e437c658fa21e7e8443179da4b79f6e4ce4e2f501c75e94b` |
| 2 | `def` | [unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/unramifiedlocus--f1dd60b1250a20136c8a0a36.md) | 58 | `declaration-track:f1dd60b1250a20136c8a0a364497c7316dc6da0caa490cf2f9bf39b7ffe96aca` |
| 3 | `lemma` | [IsUnramifiedAt.comp](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isunramifiedat-comp--4a124f168e05abf1e3150f70.md) | 61 | `result-track:4a124f168e05abf1e3150f70ebb57c1a19ce2b0ab3f3d874d9bfcf135e62199d` |
| 4 | `lemma` | [IsUnramifiedAt.of_restrictScalars](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isunramifiedat-of-restrictscalars--b30994e836605c040479d8dc.md) | 70 | `result-track:b30994e836605c040479d8dc2ed465df4e49928790662cf8b75b78a678be3319` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/instance--9bc8c6f30ff6e05fa9c551fb.md) | 74 | `declaration-track:9bc8c6f30ff6e05fa9c551fb566c6605f56b97ce2b1161db9af8e98faf825be7` |
| 6 | `theorem` | [IsUnramifiedAt.residueField](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isunramifiedat-residuefield--1288465cbf7dd645aaa07c8a.md) | 83 | `result-track:1288465cbf7dd645aaa07c8a04ad4997cc5560aa1848263b42999740451206d4` |
| 7 | `def` | [IsUnramifiedIn](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isunramifiedin--5f7b769d85b190f275107452.md) | 106 | `declaration-track:5f7b769d85b190f2751074520cf05725d3c6c352006330f96ab884ff98c1c396` |
| 8 | `theorem` | [isUnramifiedIn_top](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isunramifiedin-top--d1ad19397514b2daa72ba76a.md) | 111 | `result-track:d1ad19397514b2daa72ba76a86dea5fb8b013a6f9ba27b0f553f6bfc1cff0e42` |
| 9 | `lemma` | [unramifiedLocus_eq_compl_support](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/unramifiedlocus-eq-compl-support--31ad670cb38bf62c7e5c5e3c.md) | 119 | `result-track:31ad670cb38bf62c7e5c5e3cf012b8d13c182da5d3821442fab2e384f2d0cc7a` |
| 10 | `lemma` | [basicOpen_subset_unramifiedLocus_iff](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/basicopen-subset-unramifiedlocus-iff--9e4a4e8c6064b4a4e28c01b0.md) | 127 | `result-track:9e4a4e8c6064b4a4e28c01b04827412983e7d82d682c084df0ce7773a48a6e9a` |
| 11 | `lemma` | [unramifiedLocus_eq_univ_iff](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/unramifiedlocus-eq-univ-iff--8dc354c10721ca1a36a4ac71.md) | 136 | `result-track:8dc354c10721ca1a36a4ac7143338979f0e9beb6f88dad5f12176d3aa1afe0ad` |
| 12 | `theorem` | [formallyUnramified_iff_forall](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/formallyunramified-iff-forall--36ee557142c54cf3468fe797.md) | 141 | `result-track:36ee557142c54cf3468fe797f2661a1c0a2847e38a235be6b8e9236b52489e2d` |
| 13 | `theorem` | [unramified_iff_forall](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/unramified-iff-forall--9ddc04416213db2d91268592.md) | 145 | `result-track:9ddc04416213db2d9126859272853f5ceea6f7554deb299de57fe1c51ec21b18` |
| 14 | `lemma` | [isOpen_unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/isopen-unramifiedlocus--0827a6cfd11226dde451ff47.md) | 149 | `result-track:0827a6cfd11226dde451ff477d757c43b280b485e8f0ba72042997e3d74661be` |
| 15 | `lemma` | [exists_formallyUnramified_of_isUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/exists-formallyunramified-of-isunramifiedat--cf43635d49c310aeec7a211b.md) | 153 | `result-track:cf43635d49c310aeec7a211b0b6e929d59c648432bd3dd018b0c0c609142fe3b` |
| 16 | `lemma` | [exists_unramified_of_isUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant2e0f54243708d2e2f4ed40c3891d150c04d3a52058ee4b02ec7a2d4261c916e8.lean/declarations/exists-unramified-of-isunramifiedat--e67d109520e0b719d7a83724.md) | 160 | `result-track:e67d109520e0b719d7a83724428694524c2c658fea2d7bbd589c4c056c8ba65c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
