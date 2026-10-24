# Verification target: GRWTSK.Algebra.FiniteType.Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/index.md) · [Full source](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5`.

Source path: `GRWTSK/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean.json)

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
| 1 | `abbrev` | [FGAlgCat](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/fgalgcat--b9a1b309e3e73d6e732bbe0a.md) | 28 | `declaration-track:b9a1b309e3e73d6e732bbe0abf0bd5fb42dcbb2f498c9a2a891e74353a85b09b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/instance--8aa3473e8a17617e49eb286a.md) | 31 | `declaration-track:8aa3473e8a17617e49eb286aaa87cc3e3cb3dd6b4ff6d65d7c5385763a88e1ed` |
| 3 | `structure` | [FGAlgCatSkeleton](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/fgalgcatskeleton--5efaadb3069b705c7833c2fd.md) | 34 | `declaration-track:5efaadb3069b705c7833c2fd4e1d7ab6ba4d68321f3de8e6a168584b27726b22` |
| 4 | `def` | [FGAlgCatSkeleton.eval](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/fgalgcatskeleton-eval--6bda0f64cd2f4e7e11d28b6f.md) | 41 | `declaration-track:6bda0f64cd2f4e7e11d28b6f117c60cbcb2f24ae59521a6b27ebc00f5bb5b92e` |
| 5 | `lemma` | [Algebra.FiniteType.exists_fgAlgCatSkeleton](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/algebra-finitetype-exists-fgalgcatskeleton--15141218241eb1dc767f3a37.md) | 44 | `result-track:15141218241eb1dc767f3a379eda0da1506035efd1f0211e0e50f0e8615354db` |
| 6 | `lemma` | [RingHom.FiniteType.exists_smallRepr](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/ringhom-finitetype-exists-smallrepr--026759f1bc1a847a36ee4714.md) | 50 | `result-track:026759f1bc1a847a36ee4714948d46fd791bdef812ef4aabe8d41f7f85e20741` |
| 7 | `def` | [FGAlgCat.uliftFunctor](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/fgalgcat-uliftfunctor--b34a2a939a534b1431c8477e.md) | 58 | `declaration-track:b34a2a939a534b1431c8477ec6a0aca6026cffbe809a2929bec48039181d6f70` |
| 8 | `def` | [FGAlgCat.fullyFaithfulUliftFunctor](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/fgalgcat-fullyfaithfululiftfunctor--31ef6c226214b8972ec25cfc.md) | 64 | `declaration-track:31ef6c226214b8972ec25cfc36ccff8df15aecdc7db87e3f0be90b7ca0dda8ad` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/instance--0fd0239cf3ff95be00fb27b3.md) | 69 | `declaration-track:0fd0239cf3ff95be00fb27b3be397a51fbbf142a4c226665e67b95f95c7ccd5a` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/instance--84b9fa80cf2f59f319d35ea0.md) | 72 | `declaration-track:84b9fa80cf2f59f319d35ea0572a9df2c5b2852dec3382441be1d7ea9715c043` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/instance--9decb112c4ef445c7e92683b.md) | 76 | `declaration-track:9decb112c4ef445c7e92683b969714b0ebac1d21044c26bb60658d414a94a2da` |
| 12 | `def` | [FGAlgCat.equivUnder](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/fgalgcat-equivunder--a68cc6760d06a9d62836be2b.md) | 102 | `declaration-track:a68cc6760d06a9d62836be2b84146b44751277d682ca993772a58bf85f940e71` |
| 13 | `lemma` | [essentiallySmall_of_le](../../../../mathematics/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/declarations/essentiallysmall-of-le--fc248fd1b12cc6f07f64be8a.md) | 115 | `result-track:fc248fd1b12cc6f07f64be8ae8aaba7fa34a11f16cc7545c12d7be7abffeaf2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
