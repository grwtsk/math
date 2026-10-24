# Verification specifications

Static verification specifications are now colocated with the documentation
namespace and mirror `GRWTSK` source paths. For example:

```text
GRWTSK/Analysis/Example.lean
docs/verification/Analysis/Example/
```

The migration index is [`migration-index.json`](migration-index.json). It
records every relocated target, support file and historical evidence occurrence,
its former path, destination repository/path, preserved manifest identity/version,
and separate original and observed transfer digests. `_library-root/` and `_unscoped/`
are explicit metadata boundaries; they do not imply a source-module binding.

Historical paths that appeared in older documentation are resolved through the
[legacy artifact registry](../reference/legacy-artifacts.md). Canonical docs use
stable external artifact IDs; the registry records the historical Git blob,
exact target digest, optional immutable readback URL, and explicit unresolved
status when no blob was found.

Static fixtures, validation-only provider adapters and audit specifications are
colocated under [`_support/`](_support/). The complete former README and its
versioned mathematical scope notes are preserved under
[`_support/legacy-verification/`](_support/legacy-verification/README.md).
Multi-module bundles preserve every listed source; a first-listed navigation
root does not assert exclusive mathematical ownership or theorem dependency.

Historical generated attribution, source-variant context/catalogues and relocation
exports are retained byte-for-byte in `grwtsk/noeaaeue`, under
`verification/math/retained-math-verification-v1/verification/`. Their embedded
paths and historical hash claims remain unchanged. The migration catalogue gives
current storage locators; fresh transfer digests are not new proof receipts.
The former [`verification/`](../../verification/README.md) root now contains only
a compatibility navigation README. New non-stub files fail Noe's layout check.

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
