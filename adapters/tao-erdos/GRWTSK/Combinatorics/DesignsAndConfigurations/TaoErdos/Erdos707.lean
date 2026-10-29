/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/
import Analysis.Misc.erdos_707

namespace GRWTSK.Combinatorics.DesignsAndConfigurations.TaoErdos.Erdos707

/-- Perfect difference set cardinality, preserving the nonzero modulus. -/
theorem perfect_difference_set_card {N : ℕ} [NeZero N]
    {B : Finset (ZMod N)} (hB : _root_.IsPerfectDifferenceSet B) :
    B.card * B.card + 1 = N + B.card :=
  _root_.IsPerfectDifferenceSet.card hB

/-- A consumer-facing obstruction with every normalization and embedding
premise exposed. This is the prime case, not an arbitrary prime-power case. -/
theorem excludes_embedded_powers (p N : ℕ) (hp : p.Prime)
    (hN : N = p ^ 2 + p + 1) (B : Finset (ZMod N))
    (hB : _root_.IsPerfectDifferenceSet B)
    (embed : ({1, 2, 4, 8} : Finset ℕ) → B)
    (h_embed : ∀ n, (embed n).val = n)
    (h_inj : Function.Injective embed) : False := by
  letI : _root_.Mainstep.Hypotheses :=
    { p := p, hp := hp, N := N, hN := hN, B := B,
      hdiff := hB, embed := embed, h_embed := h_embed, h_inj := h_inj }
  exact _root_.Mainstep.contradiction

end GRWTSK.Combinatorics.DesignsAndConfigurations.TaoErdos.Erdos707
