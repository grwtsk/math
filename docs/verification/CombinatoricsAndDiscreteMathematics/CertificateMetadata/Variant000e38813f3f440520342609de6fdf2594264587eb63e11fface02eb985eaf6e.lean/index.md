# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CertificateMetadata.Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b83d4bdec347f0720085afb4dc452b85c2126f92",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b83d4bdec347f0720085afb4dc452b85c2126f92`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Kernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Authority` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotComponents` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CertificateKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificatekind--17e2c7edcb37e6c569555749.md) | 26 | `declaration-track:17e2c7edcb37e6c569555749765bdc05ec5005bf21cbb0caf62d87a810859fcd` |
| 2 | `inductive` | [CertificateAuthorityState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificateauthoritystate--7ffa3fb45ba24605e31e7345.md) | 54 | `declaration-track:7ffa3fb45ba24605e31e7345d9ba324c729769710764d18f9d93960f9ce95574` |
| 3 | `inductive` | [CertificateAuthorityTransition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificateauthoritytransition--27246c5c6260a1405bcbefe1.md) | 63 | `declaration-track:27246c5c6260a1405bcbefe1b7892f8af458a18781c0b1989321a737fc8ce156` |
| 4 | `theorem` | [CertificateAuthorityTransition.revoked_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificateauthoritytransition-revoked-terminal--c95edbafa479b3975d259a1a.md) | 82 | `result-track:c95edbafa479b3975d259a1a50711ec90854b4ffc224592dcfbb46e96744cab1` |
| 5 | `theorem` | [CertificateAuthorityTransition.superseded_terminal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificateauthoritytransition-superseded-terminal--261a1b3f49345abb6d1facfb.md) | 88 | `result-track:261a1b3f49345abb6d1facfba85a6c6d38ead5fc8dae7296b1979c83fd2afeb2` |
| 6 | `structure` | [CertificateMetadata](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificatemetadata--42965a1d21ff1ff9552b5507.md) | 98 | `declaration-track:42965a1d21ff1ff9552b5507ecf9f4ac670db484ecb5ac2fb2a05ddbde692e7e` |
| 7 | `structure` | [CertificateDependencyRegistry](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/certificatedependencyregistry--a15d8a616f8d87e7d8390cb1.md) | 118 | `declaration-track:a15d8a616f8d87e7d8390cb1b0c5dbfe3e7ba9b5cf54fc98888fe688cb93d9bd` |
| 8 | `inductive` | [UpstreamReachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/upstreamreachable--6a267e1f6d960c5f759b628c.md) | 150 | `declaration-track:6a267e1f6d960c5f759b628c0c67e98e710a37e1e53ea469464aff8e4c987079` |
| 9 | `theorem` | [no_direct_self_dependency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/no-direct-self-dependency--f88603b41e1928db94653570.md) | 165 | `result-track:f88603b41e1928db946535708f7b68bfbc62187bd69c8b90bfbc5263cb6b7406` |
| 10 | `theorem` | [upstream_component_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/upstream-component-subset--eae08c76fe18124682ee7e5a.md) | 176 | `result-track:eae08c76fe18124682ee7e5a0a682231ad9c6337f2a3cc950714dedd9a809b19` |
| 11 | `theorem` | [registered_of_reachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/registered-of-reachable--fe177a6e66bf5c528ee1e2cf.md) | 190 | `result-track:fe177a6e66bf5c528ee1e2cf65b1c20b8c8d49b9b9149974c769e0fcb3ce86ee` |
| 12 | `theorem` | [rank_decreases_along_reachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/rank-decreases-along-reachable--5f33fecacf6cdce85d5cb859.md) | 212 | `result-track:5f33fecacf6cdce85d5cb85935793e058f15e1e64cd47871525430aa43694016` |
| 13 | `theorem` | [no_dependency_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/no-dependency-cycle--88c66d35550d56d5f5e9ca9f.md) | 235 | `result-track:88c66d35550d56d5f5e9ca9f71dfc578ac65b09f3dd1b473becdc51e74e24992` |
| 14 | `structure` | [AcceptedCertificateAuthorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/acceptedcertificateauthorization--0e9307b1a04d09c52051ffc4.md) | 252 | `declaration-track:0e9307b1a04d09c52051ffc441ac6ea377dd5890b23e5a3766c5ca0e138f50bc` |
| 15 | `theorem` | [snapshot_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/snapshot-exact--a38459ecf8351aceef28e742.md) | 263 | `result-track:a38459ecf8351aceef28e742ed30d22ecc8a1a6852778c01d5c3aacb0407904a` |
| 16 | `theorem` | [admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variant000e38813f3f440520342609de6fdf2594264587eb63e11fface02eb985eaf6e.lean/declarations/admitted--db52d4b565efdfe0c61f4462.md) | 272 | `result-track:db52d4b565efdfe0c61f4462bada551af0c265a8d25d9be45c34fb266ee40d62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
