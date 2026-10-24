# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Authority.Variantee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1744cd3154906f1af0fcbd0599656ea533d78eb` · SHA-256 `ee99cd1aa9f908a4afdc313071e5def366327061d1843402b953aa606a405e8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kernel.AuthorityGate

/-!
Codex authority audit surface.

The checked authority gate calculus lives in `Think.Kernel.AuthorityGate`. This
module keeps the Codex audit surface under the canonical `formal/Think/**` tree
without creating a new authority source.
-/

namespace Think.Codex.Authority

abbrev ClaimKind := Think.Kernel.AuthorityGate.ClaimKind
abbrev TheoremAuthority := Think.Kernel.AuthorityGate.TheoremAuthority
abbrev AuthoritySurface := Think.Kernel.AuthorityGate.AuthoritySurface
abbrev AuthorityTransitionGate :=
  Think.Kernel.AuthorityGate.AuthorityTransitionGate
abbrev AuthorityTransition := Think.Kernel.AuthorityGate.AuthorityTransition
abbrev AuthorityContext := Think.Kernel.AuthorityGate.AuthorityContext

theorem wrapper_non_promotion_for_gate_free_runs
    (Γ : AuthorityContext) {x y : AuthoritySurface}
    (hRun : Γ.GateFreeRun x y)
    (hStart : ¬ x.mayForwardTheorem) :
    ¬ y.mayForwardTheorem :=
  Think.Kernel.AuthorityGate.authority_non_promotion_for_gate_free_runs
    Γ hRun hStart

end Think.Codex.Authority
```
