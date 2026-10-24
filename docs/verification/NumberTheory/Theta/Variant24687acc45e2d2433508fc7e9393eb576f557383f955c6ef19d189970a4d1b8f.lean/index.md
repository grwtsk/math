# Verification target: GRWTSK.NumberTheory.Theta.Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8d54a0e8b85bc17385d0f1a34e5c28de0bd437f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8d54a0e8b85bc17385d0f1a34e5c28de0bd437f`.

Source path: `GRWTSK/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalRat.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPrimeUB](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/logprimeub--5d3def512f924d0293fcec0e.md) | 43 | `declaration-track:5d3def512f924d0293fcec0e0cbd0351a359693cb144f16c8a958793a3cb02eb` |
| 2 | `def` | [logPrimeLB](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/logprimelb--a73f8fae620d628c330c3e6f.md) | 48 | `declaration-track:a73f8fae620d628c330c3e6fb82b14dc38ec93842e25d3473adcec9064ec448d` |
| 3 | `def` | [thetaUB](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetaub--4b05ad89c29ffea08c468443.md) | 53 | `declaration-track:4b05ad89c29ffea08c46844321b06abba9a9b8a7017996996017ab56983248e2` |
| 4 | `def` | [thetaLB](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetalb--a15d537ceb7f917674944254.md) | 58 | `declaration-track:a15d537ceb7f917674944254ba8a7af0672c7f3049bda4e26cfb72a332fe6448` |
| 5 | `theorem` | [log_prime_le_logPrimeUB](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/log-prime-le-logprimeub--6480d85d21c6013986385044.md) | 65 | `result-track:6480d85d21c60139863850443086faf165e6a2b0c5f0daa51a54f1ec8d6bc09c` |
| 6 | `theorem` | [logPrimeLB_le_log_prime](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/logprimelb-le-log-prime--0518d8abb69cf7b41e1a95d1.md) | 78 | `result-track:0518d8abb69cf7b41e1a95d12a2863ab77a84eb8bc0a447135cbda8e99db3289` |
| 7 | `theorem` | [theta_eq_ite_sum](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/theta-eq-ite-sum--e834fa339cf6b90369e21def.md) | 91 | `result-track:e834fa339cf6b90369e21defc723a6088cfb82eeebf00184ee99e9cec6fd5c90` |
| 8 | `theorem` | [theta_le_thetaUB](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/theta-le-thetaub--015c57a5c8cc1882918200a4.md) | 97 | `result-track:015c57a5c8cc1882918200a4bf2127e194e196a26fec0f13217537b7c20ebe12` |
| 9 | `theorem` | [thetaLB_le_theta](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetalb-le-theta--922f4ef1fc6f388e5e1a10e3.md) | 105 | `result-track:922f4ef1fc6f388e5e1a10e3c8c0de4d5eb42b1c5a204493cf154635f4adae96` |
| 10 | `theorem` | [theta_le_of_thetaUB_le](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/theta-le-of-thetaub-le--932b1dd7e3026a577dc06fac.md) | 115 | `result-track:932b1dd7e3026a577dc06fac39b3f198722949bac14c2b37785369fed5972bbb` |
| 11 | `def` | [checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkthetalemulwith--87199707ec51fc995b4dfe01.md) | 125 | `declaration-track:87199707ec51fc995b4dfe019884f13887b912b328232614bc0c314c77c5c9f6` |
| 12 | `theorem` | [theta_le_of_checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/theta-le-of-checkthetalemulwith--1627126340e9c1c23b62cd57.md) | 129 | `result-track:1627126340e9c1c23b62cd5721bec919aa77774bf3def936045d9a0a75520fe5` |
| 13 | `def` | [checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkthetaabserror--fc13cd133a13a43eb8f264e2.md) | 144 | `declaration-track:fc13cd133a13a43eb8f264e289ca5e10cbd8ec7842bd2cdd2bcf839ea257a893` |
| 14 | `theorem` | [abs_theta_sub_le_of_checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/abs-theta-sub-le-of-checkthetaabserror--ce3f8ff0ced2e14a850cc91f.md) | 149 | `result-track:ce3f8ff0ced2e14a850cc91f65116f5b5348e15549b9efeb8c86dcc8d8ad0592` |
| 15 | `def` | [thetaUBPrefix](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetaubprefix--9bb0c7fc369c657af51089be.md) | 174 | `declaration-track:9bb0c7fc369c657af51089be1082d47120787053616fcc1500c5b0b605593a46` |
| 16 | `theorem` | [thetaUB_succ](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetaub-succ--4796321ab63533d1c373f1e0.md) | 177 | `result-track:4796321ab63533d1c373f1e09578c117cad44fc4efc35ca2a39728298acd56f8` |
| 17 | `theorem` | [thetaUB_eq_acc](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetaub-eq-acc--fa85a7a3ce73326c91663aed.md) | 187 | `result-track:fa85a7a3ce73326c91663aeda98703dfab84e0ded5dc69ad20dfeb842de59087` |
| 18 | `def` | [checkAllThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetalemulwith--5a51d330917411d8c42e3552.md) | 196 | `declaration-track:5a51d330917411d8c42e3552bbc1a2698e099f20ce4dba1b9a1a456e1aa18599` |
| 19 | `def` | [go_true_implies_checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/go-true-implies-checkthetalemulwith--a96854c938f0f2bb0e8e6233.md) | 209 | `declaration-track:a96854c938f0f2bb0e8e6233ead8d580e68d1e97bb4afe5981992659f00377a3` |
| 20 | `theorem` | [checkAllThetaLeMulWith_implies_checkThetaLeMulWith](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetalemulwith-implies-checkthetalemulwith--fc18b3d36870b2b09b748af7.md) | 245 | `result-track:fc18b3d36870b2b09b748af76230e82fdb6bdae9594558e915d482b35432a345` |
| 21 | `theorem` | [thetaLB_succ](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetalb-succ--59d88c85baec42a8d115fc88.md) | 255 | `result-track:59d88c85baec42a8d115fc884222c4412f5c64d88a71afec44493b90ff15fe03` |
| 22 | `theorem` | [thetaLB_eq_acc](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/thetalb-eq-acc--ad6eb4704671738ca7b4fbd2.md) | 265 | `result-track:ad6eb4704671738ca7b4fbd24f42bc89af73383ad9ed337e588cfa26222d1cf7` |
| 23 | `def` | [checkAllThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetaabserror--9cabb15fdad6ae7948460793.md) | 275 | `declaration-track:9cabb15fdad6ae79484607934ca3273c4036cf87f136b2d68388c955db5a0ce8` |
| 24 | `def` | [go_true_implies_checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/go-true-implies-checkthetaabserror--14315e48d48f638d7cf4f68d.md) | 291 | `declaration-track:14315e48d48f638d7cf4f68d7d2f412fef0df9e78302dce2f6ae20241b95da9c` |
| 25 | `theorem` | [checkAllThetaAbsError_implies_checkThetaAbsError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetaabserror-implies-checkthetaabserror--b51ab81d9f3ccfae859fbad2.md) | 338 | `result-track:b51ab81d9f3ccfae859fbad2b10682a85f2efc76ea388857ec17acbec1c05e63` |
| 26 | `def` | [checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkthetarelerror--493ae2b167f5c719297b150e.md) | 352 | `declaration-track:493ae2b167f5c719297b150e2efd303acb8e7ec55f43e7839e07b220e26a54b0` |
| 27 | `theorem` | [abs_theta_sub_le_mul_of_checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/abs-theta-sub-le-mul-of-checkthetarelerror--1128a35cf341ea46b3df09d2.md) | 357 | `result-track:1128a35cf341ea46b3df09d24a8413812274e7937b0e9785342e3d635d365ee6` |
| 28 | `def` | [checkAllThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetarelerror--4d7a61bb7b97c4a42951baa9.md) | 384 | `declaration-track:4d7a61bb7b97c4a42951baa93be04309203a4a661c8d06469b46d6a5c8c36d9b` |
| 29 | `def` | [go_true_implies_checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/go-true-implies-checkthetarelerror--a66ec0ced00d22b44c77606c.md) | 403 | `declaration-track:a66ec0ced00d22b44c77606ced0a586a07e1fbe6eed14652f3014741a03d4378` |
| 30 | `theorem` | [checkAllThetaRelError_implies_checkThetaRelError](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetarelerror-implies-checkthetarelerror--9be58ed1cb1decb45845170a.md) | 466 | `result-track:9be58ed1cb1decb45845170ab3567a86b0cc0553ca7a965f175b2056d0d0b305` |
| 31 | `def` | [checkThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkthetarelerrorreal--f308c9003df0a84a74cc7fd4.md) | 486 | `declaration-track:f308c9003df0a84a74cc7fd47db6e5def92f76935929156dde09068a2798cfde` |
| 32 | `theorem` | [abs_theta_sub_le_mul_of_checkThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/abs-theta-sub-le-mul-of-checkthetarelerrorreal--aa7286f1bbda081fafde6bcf.md) | 492 | `result-track:aa7286f1bbda081fafde6bcf8dd27fab60d9939f2da6975794ce61390e4b470a` |
| 33 | `def` | [checkAllThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetarelerrorreal--7dbe1c1396f3d5ac0cde0a78.md) | 532 | `declaration-track:7dbe1c1396f3d5ac0cde0a7885bd3797ab5a89b9472bd14c8926a516548fc3a9` |
| 34 | `def` | [go_true_implies_checkAllThetaRelErrorReal](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/go-true-implies-checkallthetarelerrorreal--5f4e60b9ea4f9d9ef03a3203.md) | 555 | `declaration-track:5f4e60b9ea4f9d9ef03a32034fdcf1a06323a51436b37c457898372722b1368c` |
| 35 | `theorem` | [checkAllThetaRelErrorReal_implies](../../../../mathematics/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean/declarations/checkallthetarelerrorreal-implies--d88fefc0e9887de711cc567f.md) | 627 | `result-track:d88fefc0e9887de711cc567f4638e40ab0fbc41622ec527ad783a8c0617b3dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
