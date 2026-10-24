# Verification target: GRWTSK.NumberTheory.Basic.Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cb56c5e45d29b9a2b49508ddcf8fa15607a264a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cb56c5e45d29b9a2b49508ddcf8fa15607a264a`.

Source path: `GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith--f932cf5c4bafb3b9b2c3297e.md) | 56 | `declaration-track:f932cf5c4bafb3b9b2c3297eccc0f1c0f690f7a095e20bfe522278940500ea81` |
| 2 | `def` | [FermatLastTheoremFor](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremfor--986a3a4d569fe63e54627623.md) | 60 | `declaration-track:986a3a4d569fe63e546276230e58769bb510d6d064865b5fd76c1463cf69d981` |
| 3 | `def` | [FermatLastTheorem](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheorem--d861f627818357ed6d29d16c.md) | 68 | `declaration-track:d861f627818357ed6d29d16c6e26c8c56dbed1effb12570179089cfc68ccc93f` |
| 4 | `lemma` | [fermatLastTheoremFor_zero](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremfor-zero--3c3ec8ef943bd77670d3dc8c.md) | 70 | `result-track:3c3ec8ef943bd77670d3dc8c14a18e2a6c86126b92eae10c67474c566f682739` |
| 5 | `lemma` | [not_fermatLastTheoremFor_one](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/not-fermatlasttheoremfor-one--b525fbc4036ea7cd3403ea63.md) | 73 | `result-track:b525fbc4036ea7cd3403ea63417c8bc34114f28838eb47876c0136ecb5998a84` |
| 6 | `lemma` | [not_fermatLastTheoremFor_two](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/not-fermatlasttheoremfor-two--a15c654579d1044b0707cada.md) | 76 | `result-track:a15c654579d1044b0707cada6e28ecdf097c5733a0f5cd93484f8fe3bc1c1f20` |
| 7 | `lemma` | [FermatLastTheoremWith.mono](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-mono--8a00274992c33d9857c8f43d.md) | 81 | `result-track:8a00274992c33d9857c8f43d4d79da5c4f4c4b93e0ba778233bfa5fc62ac97b5` |
| 8 | `lemma` | [FermatLastTheoremFor.mono](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremfor-mono--1ee899865bb213b7b44b7090.md) | 88 | `result-track:1ee899865bb213b7b44b7090b80d707538993a091eef409c167f516e43da63d6` |
| 9 | `lemma` | [fermatLastTheoremWith_nat_int_rat_tfae](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-nat-int-rat-tfae--159289e52264ded12668b727.md) | 92 | `result-track:159289e52264ded12668b727ddd9f5bd95d5e42d41579996b4aeb8d75de66d72` |
| 10 | `lemma` | [fermatLastTheoremFor_iff_nat](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremfor-iff-nat--e76fd6eac4db3813f440b71d.md) | 149 | `result-track:e76fd6eac4db3813f440b71d5b9db6690a35123f260023da0e4bfa1f5123eb94` |
| 11 | `lemma` | [fermatLastTheoremFor_iff_int](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremfor-iff-int--5e3be50f4b0d8dac53d73d58.md) | 152 | `result-track:5e3be50f4b0d8dac53d73d58b26cd2fed1e87357dfd50b5b80341a8ff5b4db6f` |
| 12 | `lemma` | [fermatLastTheoremFor_iff_rat](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremfor-iff-rat--79d7fb7b4b61348363a7835f.md) | 155 | `result-track:79d7fb7b4b61348363a7835faf3281bfa6770b1039a10967e3194517d21d785a` |
| 13 | `def` | [FermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith--9fa9ce8fdb99a5044e41d120.md) | 170 | `declaration-track:9fa9ce8fdb99a5044e41d12025f12c3f1731fa14bd95b62691095312d89eda86` |
| 14 | `lemma` | [FermatLastTheoremWith.fermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--ea98dcb5e62db55c8202bd78.md) | 174 | `result-track:ea98dcb5e62db55c8202bd7818fe8ed7fd65c7b44d8a7877d3c99b98f4705eab` |
| 15 | `lemma` | [fermatLastTheoremWith'_of_semifield](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-of-semifield--c3b586da74d0258866f7bf2d.md) | 178 | `result-track:c3b586da74d0258866f7bf2d3b6633de00b5907a40cf1d33fa386f1d3485a2bb` |
| 16 | `lemma` | [FermatLastTheoremWith'.fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--6b34794c502fc337f2fcc3e5.md) | 187 | `result-track:6b34794c502fc337f2fcc3e5cd0d4473fdf8e3145399d6f5cbded066b8dbce50` |
| 17 | `lemma` | [fermatLastTheoremWith'_iff_fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-iff-fermatlasttheoremwith--c0ec04c3c4ebd8d2433b751e.md) | 196 | `result-track:c0ec04c3c4ebd8d2433b751e6db71acaec175253f1e80adbb0eb514d79e424be` |
| 18 | `lemma` | [fermatLastTheoremWith'_nat_int_tfae](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-nat-int-tfae--f4703a08ce59d0eb1a70a4e5.md) | 201 | `result-track:f4703a08ce59d0eb1a70a4e5991e1028cfda25e36827fed154f3fc99166fbe52` |
| 19 | `lemma` | [fermatLastTheoremWith_of_fermatLastTheoremWith_coprime](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/fermatlasttheoremwith-of-fermatlasttheoremwith-coprime--a727342eb7b57af6f701872c.md) | 225 | `result-track:a727342eb7b57af6f701872c256e77d103588228d4bf401b89db75afa500664e` |
| 20 | `lemma` | [dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/dvd-c-of-prime-of-dvd-a-of-dvd-b-of-flt--52378dfd7ceafeb7c31147d3.md) | 244 | `result-track:52378dfd7ceafeb7c31147d37943d8cf8c69f459dde4f2238308c19562a1d98d` |
| 21 | `lemma` | [isCoprime_of_gcd_eq_one_of_FLT](../../../../mathematics/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/declarations/iscoprime-of-gcd-eq-one-of-flt--ef900634bc9497fa4ea80f0c.md) | 252 | `result-track:ef900634bc9497fa4ea80f0cb83ee3d8822878a1e7f717356d1febede9df634f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
