# Generated verification representations

The generated verification view is colocated with the documentation namespace
and mirrors `GRWTSK` source paths. For example:

```text
GRWTSK/Analysis/Example.lean
docs/verification/Analysis/Example/
```

Noeaaeue owns the generated files. The compact template currently emits:

- `source.json`: exact UTF-8 Lean command slices, declaration ownership,
  source hashes, imports, and native-notation references when available;
- `dependency-graph.json`: typed import, declaration, and reference edges;
- `similarity.json`: deterministic, explainable similarity observations.

The surface notation is copied from the pinned Lean bytes. Elaborated notation
is not guessed by a renderer and remains unavailable until a native Lean
observer supplies a bound representation. Dependency closure, semantic
equivalence, kernel admission, replay, and mathematical acceptance are not
implied by these generated data files.

The existing top-level `verification/` manifests remain source-authored during
the migration. Noeaaeue should render new mirrored outputs under this
colocated path without rewriting those manifests or treating generated output
as canonical mathematical content.
