import Think.Kernel.Foundation

/-!
Codex foundation audit surface.

The checked definitions live in `Think.Kernel.Foundation`. This module keeps the
Codex audit surface under the canonical `formal/Think/**` tree without creating a
second authority layer.
-/

namespace Think.Codex.Foundation

theorem wrapper_is_not_theorem_authority : True := by
  trivial

end Think.Codex.Foundation
