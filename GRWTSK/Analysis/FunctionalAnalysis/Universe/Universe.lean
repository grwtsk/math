import DAF.Universe.ManifestGenerated
import DAF.Universe.LocalSystem
import DAF.Arithmetic
import DAF.Hilbert
import DAF.Fold
import DAF.Language
import DAF.Runtime

/-!
# DAF universe

This declaration-free production aggregate exposes the finite, kernel-checked
DAF universe through one canonical import.  It intentionally excludes test
modules.  Analytic unbounded-operator, global trace-formula, zero-spectrum,
and external-model truth claims remain behind the explicit capability and
certificate boundaries declared by the imported modules.
-/
