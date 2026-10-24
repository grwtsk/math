# Source registry

The registry joins mathematical Lean names to persistent publication identities.
It is authoritative source metadata, not a store of generated verification
evidence.

## Projects

[`projects.toml`](projects.toml) uses schema `formal-research/projects/v1` and an
array of `[[project]]` tables with `id`, `title`, and `lean_namespace` fields.
The canonical IDs and namespaces must be used exactly. Ghost and future
publication tooling must look up these IDs instead of guessing from titles.
`mathematical-tooling` is reserved for genuinely reusable mathematical
infrastructure rather than project-specific source.

## Theorems

[`theorems/_template.toml`](theorems/_template.toml) is a template only, not a
registered result. Future registry consumers must exclude it from real entries.

Create a separate file such as `theorems/T-017.toml` only when the result and its
target declaration actually exist. Copy the template, replace every placeholder,
and keep IDs unique. The current schema is `formal-research/theorem/v2`; it adds
canonical `authors` and `formal_dependencies` to the original registry shape:

| Field | Meaning |
| --- | --- |
| `schema` | The theorem registry schema identifier. |
| `id` | Persistent external theorem ID, such as `T-017`. |
| `title` | Human-readable result title. |
| `project` | Exact project ID from `projects.toml`. |
| `authors` | Canonical theorem authors in publication order. |
| `formal_dependencies` | Persistent theorem IDs of prior `FormalResearch` results used by the target. |
| `lean_module` | Importable Lean module containing the target. |
| `lean_declaration` | Fully qualified semantic Lean declaration. |
| `ghost_slug` | Presentation slug used by Ghost. |
| `kind` | Result kind; the theorem template uses `theorem`. |

For illustration only, a future result could have this mapping:

```text
T-017: Finite Holonomy Resolution
  project: proof-horizon
  module: FormalResearch.ProofHorizon.FiniteGame.Main
  declaration: FormalResearch.ProofHorizon.finite_holonomy_resolution
  Ghost: /theorems/t-017-finite-holonomy-resolution/
```

This example establishes no mathematical result or live Ghost page. IDs and
slugs must not replace mathematical names in Lean source. A real registration
must resolve to its declared module and declaration before acceptance.
`./scripts/verify.sh` runs `scripts/verify-registry.sh`, which imports each real
registry target, prints its exact declaration and transitive axiom dependencies,
and rejects any dependency on `sorryAx`.

## Excluded generated fields

Do not commit `commit_sha`, `verified_at`, `build_id`, or `certificate_hash` into
source registry entries. Generate those after the source commit is immutable and
store them as external verification artifacts, with local output in ignored
`artifacts/`. See [the publication policy](../docs/PUBLICATION.md) for axiom audits,
verification records, and immutable version tags.
