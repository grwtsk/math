# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeSquareSourceAudit.Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f22fb316265e3c42cdb9559ce61ad31009d28c7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f22fb316265e3c42cdb9559ce61ad31009d28c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimeSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/isprimesquare--91a6fc0947fd665d77fc6b3c.md) | 21 | `declaration-track:91a6fc0947fd665d77fc6b3c5fe32aa019e0f240176eed74a6acfc5541cdb223` |
| 2 | `def` | [primeSquareIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/primesquareindices--e25b8ae9ac02f1abe34675b7.md) | 24 | `declaration-track:e25b8ae9ac02f1abe34675b72464b5858607ff99fad129cfcbf15539c95a0970` |
| 3 | `def` | [closedPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/closedprimeroots--4802a7388da0a6fc8be56595.md) | 29 | `declaration-track:4802a7388da0a6fc8be56595f39ed26a0a2d9349f3828f793b73145287448c24` |
| 4 | `def` | [strictPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/strictprimeroots--4b056ea9a01b57e9c9a18b40.md) | 33 | `declaration-track:4b056ea9a01b57e9c9a18b40eaab28f0df661d4c0b158c3ff4630dcc5fdeb542` |
| 5 | `def` | [primeSquareContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/primesquarecontribution--7b2fdab1585a6f2597973368.md) | 37 | `declaration-track:7b2fdab1585a6f25979733687cee08695274db15f053b76b50656850bf0aa662` |
| 6 | `theorem` | [mem_closedPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/mem-closedprimeroots-iff--cb6c48f3a8dfe9a35874015b.md) | 41 | `result-track:cb6c48f3a8dfe9a35874015ba97fbf9c0814603f4ccf6b3fee5afc3ac0e3a790` |
| 7 | `theorem` | [mem_strictPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/mem-strictprimeroots-iff--bd89fca7ec82d7ee65e1cd6a.md) | 49 | `result-track:bd89fca7ec82d7ee65e1cd6adbf551b72707b83e15049ad4921c8f3f2e6e93e5` |
| 8 | `theorem` | [prime_square_cutoff_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/prime-square-cutoff-iff--1941934ec7ed87e27bae8dbe.md) | 55 | `result-track:1941934ec7ed87e27bae8dbe4ba48bc772bdb1ec476aff26fa93e7f08f3efa37` |
| 9 | `theorem` | [primeSquareIndices_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/primesquareindices-eq-image--9944b988581468837834d744.md) | 65 | `result-track:9944b988581468837834d7447d9d04a959c0fa707d846f74b995d42acdd34ade` |
| 10 | `theorem` | [four_mem_primeSquareIndices_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/four-mem-primesquareindices-iff--875ede44100ae725d434bd19.md) | 79 | `result-track:875ede44100ae725d434bd19f5e5e7179b3d7c18efaecafee1032679b2835157` |
| 11 | `theorem` | [prime_square_summand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/prime-square-summand--89b69b29ad9b0dedb116586e.md) | 91 | `result-track:89b69b29ad9b0dedb116586ea0ade1733f86337494c253f932fab58f05211514` |
| 12 | `theorem` | [primeSquareContribution_eq_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/primesquarecontribution-eq-strict--9dba4bdd98bdfb66371fbbdc.md) | 102 | `result-track:9dba4bdd98bdfb66371fbbdc5bb3e0ee0b07d8816746ce2b643fb13008b93a64` |
| 13 | `theorem` | [prime_root_endpoint_summand_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/prime-root-endpoint-summand-zero--c66f8dc2a17c69fc9b5ad7be.md) | 114 | `result-track:c66f8dc2a17c69fc9b5ad7be65a61027b13387a4708c7d052cb36c99c87985a9` |
| 14 | `theorem` | [primeSquareContribution_eq_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/declarations/primesquarecontribution-eq-closed--047d86e323654b98428514f0.md) | 128 | `result-track:047d86e323654b98428514f07d4a33403dbed6da8cb9175f03c71cc5ef5442a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
