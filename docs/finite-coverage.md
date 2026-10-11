# Finite coverage and scope

`GRWTSK.Logic.FiniteCoverage` carries four established propositions. Local proofs assemble over an explicitly covered domain with the original domain and index types. The tail variant requires a separate proof on the stated tail. Finite coverage never supplies that premise.

The two scope counterexamples retain their exact statements: a property can hold throughout a bounded real interval and fail later on the ray; both endpoints can satisfy a property that fails at the midpoint.

All complete theorem types, universes, implicit binders, native generated declarations and axiom closures were checked. An identified original importer was independently replayed with unchanged guard proof contracts. Its proofs have no finite-coverage dependency, so it counts as compatibility and contributes zero original canonical-use roles. Four newly written verification wrappers directly use the canonical theorems and are counted separately.

Run `lake build --wfail` and `python3 scripts/check_finite_coverage.py`. The checks use Lean's kernel, positive contracts and hostile missing-premise, changed-domain and reversed-conclusion controls. Independent reconstruction uses pinned public dependencies, declared public package caches and fresh project outputs.

GRWTSK added canonical placement, contract preservation and checked interface use. Local direction: grwtsk contributors; formalization and verification assistance: OpenAI Codex; MIT. The historical human/machine split is unknown. Lean and Mathlib retain upstream identities, authors and licenses. This is a local candidate with transactional admission and independent review pending. No new theorem, all-scale analytic result or RH proof is claimed.
