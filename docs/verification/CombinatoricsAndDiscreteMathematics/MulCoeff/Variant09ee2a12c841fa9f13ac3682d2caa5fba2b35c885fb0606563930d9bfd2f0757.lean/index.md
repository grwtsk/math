# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MulCoeff.Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ef85b6119898c9be55488ff87f3322723b9b228",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ef85b6119898c9be55488ff87f3322723b9b228`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Truncated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Supported` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/macro-rules--bcbecb68596b0f09636eccda.md) | 41 | `declaration-track:bcbecb68596b0f09636eccda62300bdc44ee0727f9b8220b69e82b267c78a009` |
| 2 | `def` | [wittPolyProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/wittpolyprod--e4ae6079b9daf90cd435f104.md) | 64 | `declaration-track:e4ae6079b9daf90cd435f10403eb0fdce08442af475247b59b0355bd54073ae2` |
| 3 | `theorem` | [wittPolyProd_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/wittpolyprod-vars--7b66eca30a7bd148d522b1ef.md) | 69 | `result-track:7b66eca30a7bd148d522b1efec1963cf27c4e47e1ca3e75faf5938aab36a2b52` |
| 4 | `def` | [wittPolyProdRemainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/wittpolyprodremainder--ee189903079b3d1420208c77.md) | 78 | `declaration-track:ee189903079b3d1420208c77c5900d1985a0f9ce06ce562623fd78a556421b4e` |
| 5 | `theorem` | [wittPolyProdRemainder_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/wittpolyprodremainder-vars--1791e4b723db4e853f14a8ca.md) | 82 | `result-track:1791e4b723db4e853f14a8caee60f88fe2f27bbe6a602a458729851d9318a601` |
| 6 | `def` | [remainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/remainder--49384ee30abfb29ba7929654.md) | 105 | `declaration-track:49384ee30abfb29ba7929654e1e078c02183228be0184dc7795e7dc03f200881` |
| 7 | `theorem` | [remainder_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/remainder-vars--200fdb915951036f54da83aa.md) | 112 | `result-track:200fdb915951036f54da83aae19c7366657b0b962cdaa507572ed8a9c29ca232` |
| 8 | `def` | [polyOfInterest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/polyofinterest--802c0cba9a361f08a20f08d8.md) | 127 | `declaration-track:802c0cba9a361f08a20f08d81fe804539a7fd60b41b17c67eb2767b44cb0f111` |
| 9 | `theorem` | [mul_polyOfInterest_aux1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/mul-polyofinterest-aux1--afbd975987ba0b771d9733a2.md) | 133 | `result-track:afbd975987ba0b771d9733a257e6aca9272de8e34fb5b4565080082d1276cb76` |
| 10 | `theorem` | [mul_polyOfInterest_aux2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/mul-polyofinterest-aux2--bc27c7b0e39d00bfb3010279.md) | 151 | `result-track:bc27c7b0e39d00bfb30102796b5d0803d04749a768e3eb9ece7579b03c37b45e` |
| 11 | `theorem` | [mul_polyOfInterest_aux3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/mul-polyofinterest-aux3--59b9a1ab7e9eeddc4ee68c98.md) | 158 | `result-track:59b9a1ab7e9eeddc4ee68c98313225d0b3a5e3229463a215ac33be96f4f69526` |
| 12 | `theorem` | [mul_polyOfInterest_aux4](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/mul-polyofinterest-aux4--6d352bba1a69c28edd1091de.md) | 192 | `result-track:6d352bba1a69c28edd1091de6323d1fdb860c4f1f06f3d0ae4445c1a339aee70` |
| 13 | `theorem` | [mul_polyOfInterest_aux5](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/mul-polyofinterest-aux5--8024789e5205f08a70b16997.md) | 202 | `result-track:8024789e5205f08a70b169970f5824a31a8efbf16c2c197483c39d03e58ac614` |
| 14 | `theorem` | [mul_polyOfInterest_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/mul-polyofinterest-vars--f738c97b22c15e3c4eb45913.md) | 209 | `result-track:f738c97b22c15e3c4eb459130b999026e4566f869b0143a203982663ba1b6a06` |
| 15 | `theorem` | [polyOfInterest_vars_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/polyofinterest-vars-eq--8da115631e76eebcd01b35f9.md) | 218 | `result-track:8da115631e76eebcd01b35f9282ff81f1850bfeb81437db54e193306bc7011d7` |
| 16 | `theorem` | [polyOfInterest_vars](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/polyofinterest-vars--bf387e2ef16f9738f89f60e3.md) | 228 | `result-track:bf387e2ef16f9738f89f60e32356a2a2f31991a991d0e39e74343fcd59d11609` |
| 17 | `theorem` | [peval_polyOfInterest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/peval-polyofinterest--001d19280a435fcf4fb90125.md) | 232 | `result-track:001d19280a435fcf4fb901251b1d84db89b75706fa4edba0af5c4b6ce9bc6929` |
| 18 | `theorem` | [peval_polyOfInterest'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/peval-polyofinterest--ef94ad4e3db2ac4a265bcf5b.md) | 251 | `result-track:ef94ad4e3db2ac4a265bcf5bd6047d95e3854ba9f396a6699c89bd7876bef1d9` |
| 19 | `theorem` | [nth_mul_coeff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/nth-mul-coeff--3129f918c015e0048dc772cc.md) | 271 | `result-track:3129f918c015e0048dc772ccd3fd23e97ca1c7c1f1aa9fbb9e8c40ded197c99d` |
| 20 | `theorem` | [nth_mul_coeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/nth-mul-coeff--9e8e3fecce1a75d09e8c232c.md) | 299 | `result-track:9e8e3fecce1a75d09e8c232cbb4dfc3c1a784def45f694fbb39454361163fc6d` |
| 21 | `def` | [nthRemainder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/nthremainder--aa8c08aac31873aea19728ca.md) | 316 | `declaration-track:aa8c08aac31873aea19728cabe8bcf4e08ec3b5ef7d77d6b6e39c9d7ab8a506b` |
| 22 | `theorem` | [nthRemainder_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/declarations/nthremainder-spec--211595cd1d86871f7fbcfbcd.md) | 320 | `result-track:211595cd1d86871f7fbcfbcd2fb0917559756069909d66cef71f1061e451182c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
