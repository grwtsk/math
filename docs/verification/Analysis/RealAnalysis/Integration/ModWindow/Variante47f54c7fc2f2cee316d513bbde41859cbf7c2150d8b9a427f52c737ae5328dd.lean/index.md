# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ModWindow.Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "313e0cb80f1a74a85dd7cbd1254688b4d0d64763",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `313e0cb80f1a74a85dd7cbd1254688b4d0d64763`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.WindowCore` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Norms` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModFactor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/modfactor--fdf4e3e58bc1e26e82eede1a.md) | 40 | `declaration-track:fdf4e3e58bc1e26e82eede1a2b4eb4091f0872fbefa82549b7b651e55b50742c` |
| 2 | `def` | [phiM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim--c03d7e924ff575a46154817f.md) | 52 | `declaration-track:c03d7e924ff575a46154817fb51235587a909de21e053eefee329e4468603300` |
| 3 | `def` | [cMod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/cmod--fd46b5b76d55e618d99ff38f.md) | 55 | `declaration-track:fd46b5b76d55e618d99ff38f9f2e678622f9f8dd7ca5c6a64f25f6d043f71dd2` |
| 4 | `theorem` | [phiM_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-even--7c42f86ccc3c420658c73071.md) | 61 | `result-track:7c42f86ccc3c420658c73071ec30a52e55675e58510a3acd337f5f3f2e5c8fce` |
| 5 | `theorem` | [phiM_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-nonneg--56bd578cc12432234c797340.md) | 64 | `result-track:56bd578cc12432234c79734060f5524d7aff94a70b4623e42a27e90b73ff5b6e` |
| 6 | `theorem` | [phiM_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-eq-zero--9b6ab43ed8c1751580e0f2c9.md) | 67 | `result-track:9b6ab43ed8c1751580e0f2c90d4823e3c055a3739c4bf27b866e18edab4914eb` |
| 7 | `theorem` | [phiM_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-le-one--82a24b479aba4c0bf96b6f88.md) | 71 | `result-track:82a24b479aba4c0bf96b6f88fce548f5cee070f72b73bc1bead5d5b11f468676` |
| 8 | `theorem` | [phiM_zero_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-zero-le-one--612ca7491725994d2ecac372.md) | 79 | `result-track:612ca7491725994d2ecac372e13e2040380dbc7bc40ea13b190cbd8683929ab1` |
| 9 | `theorem` | [phiM_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-contdiff--ec1fd8808213a1f965daee37.md) | 83 | `result-track:ec1fd8808213a1f965daee370e0a636acc2dfd6b5b7d5166cdad15b03384f11b` |
| 10 | `theorem` | [phi_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phi-antitoneon--5481c7572ecc9448095787e4.md) | 101 | `result-track:5481c7572ecc9448095787e4a02b771df170fc625a13a4760a20353c51b21196` |
| 11 | `theorem` | [phiM_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-antitoneon--398a0eb270edec39e71453bb.md) | 111 | `result-track:398a0eb270edec39e71453bb9f40e15b656819b75ac071323c68a5158f5f4e82` |
| 12 | `theorem` | [integral_abs_deriv_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-deriv-le-two--b6c90ba5db47ec6574eab540.md) | 125 | `result-track:b6c90ba5db47ec6574eab540fa07f5e5cc66fab3e2517ce88b09c819dfc1b78f` |
| 13 | `theorem` | [integral_abs_deriv_phiM_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-deriv-phim-le--716292f27bb53f9f1f1ae7e7.md) | 197 | `result-track:716292f27bb53f9f1f1ae7e730802ad392e05600c6f183d0ae5b5c494cd95592` |
| 14 | `theorem` | [integral_abs_deriv_phiM_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-deriv-phim-sq-le--10f6ecc65ff0131c6fc4ec3e.md) | 204 | `result-track:10f6ecc65ff0131c6fc4ec3e686105857e9d3db70b8686ab42703b458523e50f` |
| 15 | `theorem` | [deriv2_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/deriv2-mul-eq--6ab0ddaab5d158010449c5c0.md) | 221 | `result-track:6ab0ddaab5d158010449c5c032e36067d415b8363078deb284cd0c1058b3a90a` |
| 16 | `theorem` | [deriv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/deriv-mul-eq--67a35a2343e26ee3b25e7df6.md) | 249 | `result-track:67a35a2343e26ee3b25e7df659dd339454ca192854a6e970a924ca517939a9e3` |
| 17 | `theorem` | [deriv2_eq_zero_of_eqOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/deriv2-eq-zero-of-eqon--d91ee8df12be6cd744eb830f.md) | 256 | `result-track:d91ee8df12be6cd744eb830f5059e82640c0dc9a8f153d4f10b4cf99320d3b0d` |
| 18 | `theorem` | [integrable_abs_of_cs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integrable-abs-of-cs--0421f5ce2c18c9783fdbf665.md) | 269 | `result-track:0421f5ce2c18c9783fdbf665e8377445ce8841745514b64ffa9e1fec9de1f7d7` |
| 19 | `theorem` | [integral_abs_deriv2_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-deriv2-mul-le--f71be70672bb13ad28fb4e12.md) | 275 | `result-track:f71be70672bb13ad28fb4e121f543d04e933472990a091e2fc3dc02bb6d2c03f` |
| 20 | `theorem` | [integral_abs_phi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-phi-le--3b43cd7693f16bd560d39910.md) | 336 | `result-track:3b43cd7693f16bd560d39910dd6331c6091b8fd8005dc249f7fec95909ef2c10` |
| 21 | `theorem` | [integral_abs_phi_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-phi-sq-le--3947a979fb4714d8c6ccf2c1.md) | 358 | `result-track:3947a979fb4714d8c6ccf2c1c36ed8e55fe4f9c28350d68462c50f5b0f4400ba` |
| 22 | `theorem` | [l1Deriv2_nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/l1deriv2-nonneg--d20211c8a8da35d3097f1e15.md) | 370 | `result-track:d20211c8a8da35d3097f1e15304584c4dacdf9b77ebe05d2ab91f8db4d299fe3` |
| 23 | `theorem` | [phiM_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-hascompactsupport--accdca77528b3980bf932375.md) | 372 | `result-track:accdca77528b3980bf93237555d3dc7dd7c3f8b86e5dfcb5d174ff6d06b40e91` |
| 24 | `theorem` | [ModFactor.abs_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/modfactor-abs-le-one--814012bdfa06a4d2b8e3f636.md) | 376 | `result-track:814012bdfa06a4d2b8e3f6369f4a81651d4345e43d51a5a8f64dba5e44482ade` |
| 25 | `theorem` | [integral_abs_deriv2_phiM_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-deriv2-phim-le--624b6a41088d92ff7147074a.md) | 380 | `result-track:624b6a41088d92ff7147074a83c303d457f9a114ac788e7b2057063b372908ba` |
| 26 | `theorem` | [phiM_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/phim-sq-eq--66a993cf5f2f198c9443cbdc.md) | 414 | `result-track:66a993cf5f2f198c9443cbdc4ebe2b5cd38a89ac6a0773118ea0f5a65f58d959` |
| 27 | `theorem` | [integral_abs_deriv2_phiM_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/integral-abs-deriv2-phim-sq-le--22a692bd68ccc62ebee8417d.md) | 418 | `result-track:22a692bd68ccc62ebee8417d074651e1387a03628d803f085c236d84e4c8da7e` |
| 28 | `theorem` | [four_le_cMod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/four-le-cmod--67f81a1b9c23315bd885ba6e.md) | 488 | `result-track:67f81a1b9c23315bd885ba6e94e208466d6c06329bcb9eac1e7c5fe5d4675c12` |
| 29 | `theorem` | [admWindow_phiM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/declarations/admwindow-phim--d88658b5856d66003ac81c08.md) | 493 | `result-track:d88658b5856d66003ac81c08f600a129ff45db40de2e77cfd886e83959ffd2a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
