import Mathlib.Topology.MetricSpace.Basic
open Set

/--
A toy “Fredholm” lemma: every finite-dimensional subspace is closed.
This is small but non-trivial, perfect for CI smoke tests.
-/
lemma finiteDimensional_subspace_closed
  {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
  {F : Submodule ℝ E} (h : FiniteDimensional ℝ F) :
  IsClosed (F : Set E) := by
  -- one-liner with library lemma
  simpa using F.closed_of_finiteDimensional h
