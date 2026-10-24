# Verification target: GRWTSK.Algebra.Noetherian.Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22fbe4774064f0357c57bc644e3d6e5d36005ffe",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22fbe4774064f0357c57bc644e3d6e5d36005ffe`.

Source path: `GRWTSK/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Noetherian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NoetherianSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/declarations/instance--37c9ad6db25386b3bffae17e.md) | 34 | `declaration-track:37c9ad6db25386b3bffae17e6e9717bb189c23a4a89a55ef01469a4cd9a68dc7` |
| 2 | `lemma` | [_root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.minimalPrimes.finite_of_isNoetherianRing](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/declarations/root-grwtsk-algebra-rootminimalprimesfiniteofisnoetherianring-varianta5b--f7f7e9d9df3de29e86a42fe1.md) | 37 | `result-track:f7f7e9d9df3de29e86a42fe15a5c1829870c44450a8d27c13710a36106c151c9` |
| 3 | `lemma` | [finite_setOf_isMin](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/declarations/finite-setof-ismin--e730a1026b12085435d12dac.md) | 42 | `result-track:e730a1026b12085435d12dac25fc3d0ce78666f3ce4f6e02e14caa6bf631372e` |
| 4 | `lemma` | [_root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.Ideal.finite_minimalPrimes_of_isNoetherianRing](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/declarations/root-grwtsk-algebra-rootminimalprimesfiniteofisnoetherianring-varianta5b--e9119c2c752870f91e0706db.md) | 49 | `result-track:e9119c2c752870f91e0706db17e22b090d64dfad6b28e2eb03039d3d8a772cae` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/declarations/instance--e0792d85670ea12be96a2a8d.md) | 61 | `declaration-track:e0792d85670ea12be96a2a8dbe1733bc9c6a9682e458effee70ce192de2fa4fc` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/declarations/instance--dec46c3be951b3101429a071.md) | 63 | `declaration-track:dec46c3be951b3101429a071187baa2d64f9c4c9c6c3855d24c15c64d67369ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
