# GRWTSK mathematics

A Lean library of exact mathematical statements, reusable proofs and explicit open obligations. Local contributions retain their upstream sources and individual credit.

| Start here | What you will find |
|---|---|
| [First example](docs/start/least-prime.md) | Two is the least natural prime; from observation to checked reuse |
| [Browse documentation](docs/index.md) | Reader routes and mathematical subjects |
| [Result catalog](docs/reference/results.md) | Three selected families, their hypotheses, evidence and limits |
| [Verify a result](docs/how-to/verify.md) | Pinned source, fresh checking and failure interpretation |
| [Explore research](docs/reference/library-pages.md) | Existing family pages, conditional results and open questions |

Lean 4.33.0 and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d` are pinned. Read each result's source-bound receipt: compilation, mathematical scope and repository integration are different judgments. The ongoing subject-layout migration requires affected replay; earlier checks remain historical evidence. RH and the actual Möbius cross-energy bound remain open.

Local source is MIT; Mathlib is Apache-2.0. See [NOTICE](NOTICE), [licenses](LICENSES) and result-specific citations. Custody, namespace changes and compilation do not confer authorship or originality.

The [documentation model](docs/explanation/documentation.md) explains this organization. The [previous README](docs/changes/README-before-reader-navigation.md) is retained verbatim, including its historical commands and claims.

The scoped Möbius response replay infrastructure is available in
`scripts/check_moebius_response.py`. It compiles exclusive read-only source
copies at trust zero with fatal warnings, audits declarations by owning module
(including private and generated declarations), and requires strict intended
failures for its custom-axiom controls. Dependency checkout revisions must match
the Lake lock, tracked dependency sources must be clean, and importable cached
object families are frozen before replay. This does not rebuild dependency
sources or prove that cached objects derive from their pinned source trees.

The replay also requires the shared mathematical-layout checker and its complete
Git-visible inventory gate. The default Möbius source manifest and full source
admission are pending; their absence or an old manifest causes rejection before
proof compilation. Infrastructure publication is not acceptance of the pending
mathematical bundle. HSS, P04 and unconditional RH remain open.

Pure verifier regression controls do not execute Lean:

```sh
python3 -B scripts/check_lean_repository_inputs.py
python3 -B -m unittest discover -s scripts -p test_moebius_response_inputs.py
python3 -B -m unittest discover -s scripts -p test_moebius_owner_census.py
python3 -B scripts/test_moebius_response_checker.py
```

The repository input gate rejects PDF and TeX assets. Failed and interrupted
replay receipts are retained under ignored `.local/checks`; they cannot be
promoted to kernel acceptance.
