# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc85ed3fcced3bf9f4f124e7497046fe159cf3e6` · SHA-256 `6da9ab270dfc05b54880d8eac74a9d4fb49c9126a17b6c477fb5d895d1d69f13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Atomize.Formal.Examples

/-!
# Kernel-authority audit for the bounded M1a exports

**Architectural problem:** A successful build alone does not show which logical
axioms an exported theorem depends on.  The audit therefore asks the pinned
Lean environment to print both each public type and its transitive axiom set.

**Important data and indices:** The eight declarations below cover structural
recovery, root/size/height preservation, constant/root-variable/leaf-origin
accounting, and the conditional boundary-closed recovery theorem.

**Type-enforced invariant:** `#check` must elaborate each exact declaration
name. `#print axioms` then queries the checked environment for that declaration;
an absent or renamed witness makes this module fail to elaborate.

**Layer boundary:** The resulting text is a Lean environment observation.  Its
capture, hashing, and replay are external evidence, while the referenced proof
terms retain only the authority granted by Lean's kernel and their printed
logical assumptions.

**Worked example:** `eval_comp` is expected to report the ordinary logical
closure needed by its proof, not a fabricated claim that the theorem is
"axiom-free" in every sense.

**Used by:** `Surface.ContinuousAssurance.AxiomAudit` imports this module, and
the evidence controller binds the emitted paragraphs to `ATOMIZE-M1A-001`.

**Proof idea:** This file proves no new theorem.  It makes the load-bearing
exports mandatory inputs to a separate kernel-environment inspection step.

**Equality notion:** The printed theorem types contain Lean propositional
equalities from the source modules; the audit does not replace them with hash,
pretty-print, or normalized-text equality.

**Boundary cases:** A declaration may have an empty printed axiom set or may
depend on explicitly permitted logical principles.  Either result is recorded;
the audit must not silently turn an unexpected dependency into acceptance.

**Validation consequence:** A current successful audit binds the named M1a
exports and their observed axiom closure.  It does not certify a concrete Lean
frontend adapter, Rust runtime, historical trace, or any later milestone.
-/

#check Atomize.Formal.eval_comp
#print axioms Atomize.Formal.eval_comp
#check Atomize.Formal.root_comp
#print axioms Atomize.Formal.root_comp
#check Atomize.Formal.size_comp
#print axioms Atomize.Formal.size_comp
#check Atomize.Formal.height_comp
#print axioms Atomize.Formal.height_comp
#check Atomize.Formal.constantReferences_comp
#print axioms Atomize.Formal.constantReferences_comp
#check Atomize.Formal.rootVariables_comp
#print axioms Atomize.Formal.rootVariables_comp
#check Atomize.Formal.leafOrigins_comp
#print axioms Atomize.Formal.leafOrigins_comp
#check Atomize.Formal.eval_compB
#print axioms Atomize.Formal.eval_compB
```
