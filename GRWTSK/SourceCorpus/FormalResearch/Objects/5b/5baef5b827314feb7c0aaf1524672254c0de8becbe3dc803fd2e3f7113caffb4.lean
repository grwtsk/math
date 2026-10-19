import Formal.External.PrimeNumberTheoremAnd
import Formal.External.LeanCert

/-!
External dependency surface marker.

This root surfaces external dependency boundary metadata only.
-/

namespace Formal.Surface.External

def importsExternalCorpus : Bool := false

theorem external_corpus_not_imported : importsExternalCorpus = false := by
  rfl

end Formal.Surface.External
