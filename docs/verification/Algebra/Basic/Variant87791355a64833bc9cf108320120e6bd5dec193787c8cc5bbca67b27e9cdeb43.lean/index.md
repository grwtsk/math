# Verification target: GRWTSK.Algebra.Basic.Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4e1ff8f466b21c0aaeb8e08aae8b5b7cd9cead",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4e1ff8f466b21c0aaeb8e08aae8b5b7cd9cead`.

Source path: `GRWTSK/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Coalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bialgebra](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/bialgebra--e59c640524a881096350691e.md) | 55 | `declaration-track:e59c640524a881096350691e0d56970c5a22cac3fb5d990d23cc5f20ac91f520` |
| 2 | `lemma` | [counit_mul](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/counit-mul--e9bbeab94f9f5d655a257721.md) | 91 | `result-track:e9bbeab94f9f5d655a2577210db578a5d276b1b219e0ac988a14e2ec92a5d0ec` |
| 3 | `lemma` | [comul_mul](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/comul-mul--1fe896750b0f4a5c337d889e.md) | 94 | `result-track:1fe896750b0f4a5c337d889e37b08c7ea48a09adffc8236432d0d1298219039b` |
| 4 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/mk--ef1d57f46aab807200899886.md) | 104 | `declaration-track:ef1d57f46aab8072008998866521f7807692b5972ecc62d766c481d05b24472e` |
| 5 | `def` | [counitAlgHom](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/counitalghom--dcb85a7a3f190cf4a462794e.md) | 119 | `declaration-track:dcb85a7a3f190cf4a462794ec840f9c96274b3409db179c8baa723110063a292` |
| 6 | `def` | [comulAlgHom](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/comulalghom--dee7b9525ecc12f6993bccf9.md) | 124 | `declaration-track:dee7b9525ecc12f6993bccf950c90d3018aa7faa81239b396a3bb09ffb148d81` |
| 7 | `lemma` | [counit_algebraMap](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/counit-algebramap--32dbdac41ea34f103069311f.md) | 129 | `result-track:32dbdac41ea34f103069311f27695173b3871f7c0aaf747770daf905f8304ae1` |
| 8 | `lemma` | [comul_algebraMap](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/comul-algebramap--03cccc993633e9cd13dc46fc.md) | 132 | `result-track:03cccc993633e9cd13dc46fcf6491d2908138d83a921ce9542bdf47527e384ce` |
| 9 | `lemma` | [counit_natCast](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/counit-natcast--8523ad9e047f5e5ebbd7a6a7.md) | 136 | `result-track:8523ad9e047f5e5ebbd7a6a73ef0ca64c52501f5efa344fa93a8106971dd61f8` |
| 10 | `lemma` | [comul_natCast](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/comul-natcast--7d2e7e942721e446ca46ed3a.md) | 139 | `result-track:7d2e7e942721e446ca46ed3a89677326b64860e1b992add04d2fa13354896436` |
| 11 | `lemma` | [counit_pow](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/counit-pow--a03517a886e23fc24a87e060.md) | 142 | `result-track:a03517a886e23fc24a87e06079d90e3d0fd7f2c465586308da483ab91c33b6ca` |
| 12 | `lemma` | [comul_pow](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/comul-pow--fe14d6420d7143f118eedea1.md) | 145 | `result-track:fe14d6420d7143f118eedea1f5f4e30951133834bb724ce2ad0290367ab2e28f` |
| 13 | `instance` | [toBialgebra](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/tobialgebra--d9dda20fd7424686d3e955ca.md) | 157 | `declaration-track:d9dda20fd7424686d3e955ca0e85eaa6e493cdb71e14440c908d0991c50ac9b4` |
| 14 | `abbrev` | [ofAlgHom](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/ofalghom--6e3d7dc40f65fd39cd24fafa.md) | 174 | `declaration-track:6e3d7dc40f65fd39cd24fafa02fd737a8d94a0516075823713f564e2d3269e5e` |
| 15 | `lemma` | [algebraMap_injective](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/algebramap-injective--cfe10410979a170a1aa3417b.md) | 198 | `result-track:cfe10410979a170a1aa3417b0700d2309e161a56e30183c256710f20062f5de8` |
| 16 | `lemma` | [counit_surjective](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/counit-surjective--aa6826f97dba61d0cf92804f.md) | 200 | `result-track:aa6826f97dba61d0cf92804f92d814b9c1577ff68e39daed62e66efdc6a3da97` |
| 17 | `lemma` | [nontrivial](../../../../mathematics/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/declarations/nontrivial--a77c809f6d4060c2051597ad.md) | 206 | `result-track:a77c809f6d4060c2051597adf309714ab67bcec0bdeb5471828469c5a7ce72f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
