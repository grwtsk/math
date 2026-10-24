# Verification target: GRWTSK.Algebra.Noetherian.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5aaba23cdef76f8b8ab9ce2d444424d737c8214",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/index.md) · [Full source](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5aaba23cdef76f8b8ab9ce2d444424d737c8214`.

Source path: `GRWTSK/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Noetherian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NoetherianSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/declarations/instance--921a1815a8251ecfe84143ba.md) | 26 | `declaration-track:921a1815a8251ecfe84143bacbac9b42bc5c9ebde349fc7f2f5c3159c2e81194` |
| 2 | `lemma` | [_root_.minimalPrimes.finite_of_isNoetherianRing](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/declarations/root-minimalprimes-finite-of-isnoetherianring--3ec3412ee3348757e4bfb601.md) | 29 | `result-track:3ec3412ee3348757e4bfb601e022d8e4a34306592e7172723c3ea4d70add402a` |
| 3 | `lemma` | [finite_setOf_isMin](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/declarations/finite-setof-ismin--8046b1576328344b9e286999.md) | 34 | `result-track:8046b1576328344b9e286999b687f890b5ca89cab590d76507be553f4662f5fd` |
| 4 | `lemma` | [_root_.Ideal.finite_minimalPrimes_of_isNoetherianRing](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/declarations/root-ideal-finite-minimalprimes-of-isnoetherianring--f6b5dc88754abe06fef15cce.md) | 41 | `result-track:f6b5dc88754abe06fef15cce8967769471fe7d06791c4488ebac06a043f46065` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/declarations/instance--c90b803535a390f8f8bb1e11.md) | 53 | `declaration-track:c90b803535a390f8f8bb1e110f4a7b623264736eb59cdecbfdb38ce2ea0fe79b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Noetherian/Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.lean/declarations/instance--96163b2e299da10df9dbb294.md) | 55 | `declaration-track:96163b2e299da10df9dbb294f61d57cddf0ebfc78713e3393176148920ab046f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
