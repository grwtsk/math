# Verification specifications and generated views

Static verification specifications are now colocated with the documentation
namespace and mirror `GRWTSK` source paths. For example:

```text
GRWTSK/Analysis/Example.lean
docs/verification/Analysis/Example/
```

The migration index is [`migration-index.json`](migration-index.json). It
records every moved top-level static target, its former path, preserved
manifest identity/version, exact content digest, and whether its source scope
was mirrored, library-wide, or unscoped. `_library-root/` and `_unscoped/`
are explicit metadata boundaries; they do not imply a source-module binding.

The former [`verification/`](../../verification/README.md) directory remains
only as a compatibility boundary for legacy fixtures, provider adapters,
relocation records, source variants, and attribution material. Those are not
the canonical static target namespace.

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

Noeaaeue owns the generated files. It renders them under the same mirrored
paths without rewriting these source-authored specifications or treating
generated output as canonical mathematical content.

Static specifications do not assert Lean elaboration, replay, trust audit,
hostile-control execution, mathematical admission, or proof status. Those
receipts and proof capsules remain external Noeaaeue artifacts.
