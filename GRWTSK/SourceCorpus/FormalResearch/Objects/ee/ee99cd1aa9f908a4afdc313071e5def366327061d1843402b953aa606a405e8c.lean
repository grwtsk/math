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
