import Surface.Legacy.BinaryLogicMatrix.Stream.HomologyComplexitySorter

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure BinaryLogicMatrixStream where
  streamId : String
  frames : List Frame
  rootHash : String
  terminalHash : String
  claimBoundary : List String
  allFramesAreMatrices :
    ∀ F, F ∈ frames →
      Nonempty
        (BinaryLogicMatrix F.payload.rows F.payload.cols)
  allBoundariesVisible :
    ∀ F, F ∈ frames → F.claimBoundary = F.claimBoundary

structure OrderedBinaryLogicMatrixStream where
  stream : BinaryLogicMatrixStream
  loci : List TensorLocus
  complexity : List HomologyComplexityIndex
  preorder : HomologyComplexityPreorder
  sortedLeastToMost : Prop
  everyFrameHasLocus :
    ∀ F, F ∈ stream.frames →
      ∃ L, L ∈ loci ∧
        Nonempty
          (BinaryLogicMatrix L.carrier.rows L.carrier.cols)
  everyLocusHasComplexity :
    ∀ L, L ∈ loci →
      ∃ C, C ∈ complexity ∧ C.locus = L
  claimBoundary : List String

theorem orderedStream_boundary_visible
    (S : OrderedBinaryLogicMatrixStream) :
    S.claimBoundary = S.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
