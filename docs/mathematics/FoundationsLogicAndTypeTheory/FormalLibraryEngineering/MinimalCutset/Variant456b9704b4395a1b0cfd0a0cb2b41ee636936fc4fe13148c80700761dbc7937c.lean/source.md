# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinimalCutset.Variant456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d9a746c0430cef902e09ee61f4cdf9133896d65` · SHA-256 `456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.FrontierAntichain

/-!
# Exact minimal route cutsets
-/

namespace Mathematics.ProofStrategy

universe u

def HitsEveryFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation)
    (cutset : Requirement Obligation) : Prop :=
  ∀ frontier ∈ frontiers,
    ∃ obligation, obligation ∈ cutset ∧ obligation ∈ frontier

structure MinimalCutset
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation) where
  cutset : Requirement Obligation
  hits : HitsEveryFrontier frontiers cutset
  indispensable :
    ∀ obligation ∈ cutset,
      ¬ HitsEveryFrontier frontiers (cutset.erase obligation)

theorem minimalCutset_nonempty_of_nonempty_frontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    {frontiers : FrontierFamily Obligation}
    (frontiers_nonempty : frontiers.Nonempty)
    (certificate : MinimalCutset frontiers) :
    certificate.cutset.Nonempty := by
  rcases frontiers_nonempty with ⟨frontier, frontier_member⟩
  rcases certificate.hits frontier frontier_member with
    ⟨obligation, obligation_in_cutset, _⟩
  exact ⟨obligation, obligation_in_cutset⟩

end Mathematics.ProofStrategy
```
