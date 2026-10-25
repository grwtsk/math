# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variant9c7edc1e0c50a64e0e6a8a9aff9e5862b0f4dbc8594e9bc147050c1ec3709f76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97de73e891a62ea24b5e36e4b2fe229be05c3eb5` · SHA-256 `9c7edc1e0c50a64e0e6a8a9aff9e5862b0f4dbc8594e9bc147050c1ec3709f76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
# formal-research

Lean formalization for independent research programs, with semantic mathematical
names and a separate registry of persistent publication identities.

The Git repository and Lake package are `formal-research`; the Lean library and
root module are `FormalResearch`. The default Git branch is `main`.

The local checkout is `/Users/local/Desktop/NoeaaeueFormal`. Its folder name is
independent of the repository, package, and Lean identities above.

This repository separates exploratory mathematics, accepted formal source,
persistent theorem identities, and generated publication evidence.

## Research families

| Project ID | Lean namespace |
| --- | --- |
| `mathematical-tooling` | `FormalResearch.MathematicalTooling` |
| `noeaaeue` | `FormalResearch.Noeaaeue` |
| `socas` | `FormalResearch.SOCAS` |
| `riemann-hypothesis` | `FormalResearch.RiemannHypothesis` |
| `graham-number-neighborhood-factorization` | `FormalResearch.GrahamNumberNeighborhoodFactorization` |
| `proof-horizon` | `FormalResearch.ProofHorizon` |

`FormalResearch.MathematicalTooling` contains genuinely reusable mathematical
infrastructure. `FormalResearch.Shared` remains reserved for demonstrated reuse
of project-specific definitions by independent programs. The canonical project
titles are in [registry/projects.toml](registry/projects.toml).

## Reproduce the environment

Install [elan](https://github.com/leanprover/elan) if needed, then run from this
checkout:

```sh
elan --version
lake --version
lean --version
lake exe cache get
lake build
./scripts/verify.sh
```

The environment is pinned to Lean `leanprover/lean4:v4.33.0` and Mathlib
`v4.33.0`. Keep these files in version control:

| File | Role |
| --- | --- |
| `lean-toolchain` | Selects the Lean toolchain through elan. |
| `lakefile.toml` | Declares dependencies and strict Lean options. |
| `lake-manifest.json` | Records the exact resolved dependency commits. |

The Git commit identifies the complete formal source state. Use the committed
manifest when reproducing a result; `lake update` is for intentional dependency
maintenance, followed by cache retrieval, verification, and review of the lock
changes. Do not track Mathlib `master` for authoritative results.

## Source and verification

`FormalResearch.lean` is the acceptance import graph. Family aggregators document
public research namespaces; accepted submodules must also be reachable from the
root module, whether through an aggregator or by an explicit root import. This
keeps every maintained result inside the default build without forcing a source
license header that the repository has not adopted.

`./scripts/verify.sh` checks the manifest exists, builds with warnings treated as
errors, resolves and audits registered theorem declarations, rejects `sorryAx`,
runs the linter, and checks whitespace. Publication must repeat the declaration
and axiom audit against an immutable source commit and bind that evidence to the
formal release; passing the source gate alone does not authorize
`#kernel-verified` status.

Use ignored `scratch/` for disposable experiments and ignored `artifacts/` for
generated output. Neither is authoritative formal source. Open conjectures belong
in source as propositions once their exact statements are formalized; they do
not receive placeholder proofs or axioms.

## Policies

- [Formalization and acceptance boundary](docs/FORMALIZATION.md)
- [Canonical names, modules, branches, and commits](docs/NAMING.md)
- [Publication verification, certificates, and immutable tags](docs/PUBLICATION.md)
- [Registry schema and identity mapping](registry/README.md)

The filesystem follows mathematics; the registry follows publication identity;
Git follows history; Lean follows proof.
````
