# Verification target: GRWTSK.Algebra.Defs.Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a1911a35d5938452e3271a3d9c4234b10db45d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a1911a35d5938452e3271a3d9c4234b10db45d`.

Source path: `GRWTSK/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommRing](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instcommring--a4194e716ed4a37117e33eb9.md) | 23 | `declaration-track:a4194e716ed4a37117e33eb9e1c6eaecaad1f0bf3b83ade465f1a85e06790c47` |
| 2 | `instance` | [instCancelCommMonoidWithZero](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instcancelcommmonoidwithzero--b723a77e1021caf78b21feec.md) | 42 | `declaration-track:b723a77e1021caf78b21feecb11e76aaaf35a145263d1e7c78a378b87b9766f3` |
| 3 | `instance` | [instCharZero](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instcharzero--998307de5b1d17fcb924c4a9.md) | 45 | `declaration-track:998307de5b1d17fcb924c4a9d091bed5694e8d920f7a34257c36488dec348e09` |
| 4 | `instance` | [instMulDivCancelClass](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instmuldivcancelclass--966a30bad3a8e832fa8356d6.md) | 47 | `declaration-track:966a30bad3a8e832fa8356d64607f4dfd969735998070004eeb670d0616a2a30` |
| 5 | `lemma` | [cast_mul](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/cast-mul--081effa945cf2f6a3396c345.md) | 50 | `result-track:081effa945cf2f6a3396c3452a759c60542d08b0220a777e72e7f457d9a25f6d` |
| 6 | `lemma` | [cast_mul_eq_zsmul_cast](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/cast-mul-eq-zsmul-cast--c901a447d2bced0a22bf6b7c.md) | 60 | `result-track:c901a447d2bced0a22bf6b7c19b1132ac02446b0264dc484fb5aa81bce3e4253` |
| 7 | `lemma` | [cast_pow](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/cast-pow--a15d85b37702e8dd26fe9b3b.md) | 65 | `result-track:a15d85b37702e8dd26fe9b3be3f892c7d72f2c0a6401b3b4921ebd2d383dcb27` |
| 8 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instcommsemiring--8f82ec439dad42daf3f3d092.md) | 76 | `declaration-track:8f82ec439dad42daf3f3d092ab1e5cf0d5d2264159e70775fb4e38a69d7291f3` |
| 9 | `instance` | [instSemiring](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instsemiring--9d6b6c21d6bbe94eabb08932.md) | 77 | `declaration-track:9d6b6c21d6bbe94eabb08932c9a3e9a4b87fa316df0b0b1140cd8978c0768898` |
| 10 | `instance` | [instRing](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instring--40efc9ee481124ba5801efcd.md) | 78 | `declaration-track:40efc9ee481124ba5801efcd7881effaa9c618d85d0e5ea55d5762bb6899d86b` |
| 11 | `instance` | [instDistrib](../../../../mathematics/Algebra/Defs/Variantb98c80c529afee66ea538ee4064b73961b119e449c654e9701d52cd30a73be5b.lean/declarations/instdistrib--0257f12e9a3084bb25b65442.md) | 79 | `declaration-track:0257f12e9a3084bb25b65442efcfbf1e5d39466944471192e84f51c1573ffb25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
