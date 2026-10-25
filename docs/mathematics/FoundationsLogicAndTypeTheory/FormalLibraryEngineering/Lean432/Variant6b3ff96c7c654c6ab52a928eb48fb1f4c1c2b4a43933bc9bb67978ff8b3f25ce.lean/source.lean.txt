import MathDiscovery.Extractor.Adapter.Interface

/-!
# Lean 4.32 adapter marker

The executable adapter is `tools.LeanEnvironmentExtract`.  This module pins its
identity without exposing unstable internal APIs to downstream schema modules.
-/

namespace MathDiscovery.Extractor.Adapter.Lean_4_32

open MathDiscovery.Extractor

def version : Version := ⟨"lean-v4.32.0-adapter/2"⟩

end MathDiscovery.Extractor.Adapter.Lean_4_32
