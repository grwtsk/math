-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantb31d1b50a931657700e422b6b9e9b145a8a132ef77ae91df555a3c96687c66c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b31d1b50a931657700e422b6b9e9b145a8a132ef77ae91df555a3c96687c66c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.SourceUnit.Variantb31d1b50a931657700e422b6b9e9b145a8a132ef77ae91df555a3c96687c66c5","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"b31d1b50a931657700e422b6b9e9b145a8a132ef77ae91df555a3c96687c66c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/b31d1b50a931657700e422b6b9e9b145a8a132ef77ae91df555a3c96687c66c5.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variantb31d1b50a931657700e422b6b9e9b145a8a132ef77ae91df555a3c96687c66c5

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
