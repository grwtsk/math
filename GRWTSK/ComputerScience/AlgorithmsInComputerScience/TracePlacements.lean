import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Trace

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.trace

theorem placements_count :
    placements.length = 14 :=
  Think.SourceTree.tracePole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

structure SrcLibPoleStream where
  streamId : Nat
  frameCount : Nat
  hasPoleAtOne : Prop
deriving Repr

def srcLibDefaultPoleStream : SrcLibPoleStream where
  streamId := 1
  frameCount := placements.length
  hasPoleAtOne := True

def SrcLibPoleStream.hasFiniteTrace (stream : SrcLibPoleStream) : Prop :=
  stream.frameCount > 0

theorem srcLibDefaultPoleStream_frameCount :
    srcLibDefaultPoleStream.frameCount = 14 := by
  rfl

theorem srcLibDefaultPoleStream_hasFiniteTrace :
    srcLibDefaultPoleStream.hasFiniteTrace := by
  unfold SrcLibPoleStream.hasFiniteTrace
  rw [srcLibDefaultPoleStream_frameCount]
  decide

end Think.Poles.Trace
