# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scheduler.Variant9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78106a289cb13953d2f2cbde83fead7d420757b8` · SHA-256 `9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Scheduler

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.scheduler

theorem placements_count :
    placements.length = 7 :=
  Think.SourceTree.schedulerPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Scheduler
```
