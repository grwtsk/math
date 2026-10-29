import Think.SourceTree.Legacy.ModularWave.LFunctionLowering

namespace Think.ModularWave

structure TraceIndependenceRelation where
  onlyZeroResidueFlips : Bool
  adjacentOperationsOnly : Bool
  equalAdmittedObservables : Bool
  noUnledgeredResidue : Bool

def ValidatedTraceQuotient
    (word : BoundedWord)
    (independence : TraceIndependenceRelation) : Prop :=
  word.ordered = true /\
  independence.onlyZeroResidueFlips = true /\
  independence.adjacentOperationsOnly = true /\
  independence.equalAdmittedObservables = true /\
  independence.noUnledgeredResidue = true

structure PoleStreamProjection where
  orderedPoleStream : Bool
  orderPreserved : Bool
  residueZeroOrLedgered : Bool

structure TraceQuotientProjection where
  generatedOnlyByValidatedFlips : Bool
  residueZeroOrLedgered : Bool

structure CompactShell where
  objectIsReciprocalPrimeProduct : Bool
  multiplicityPreserved : Bool
  orderErased : Bool
  preservesExecutionOrder : Bool
  proofAuthority : Bool
  authorityStatusPreserved : Bool

def CompactShell.Valid (compact : CompactShell) : Prop :=
  compact.objectIsReciprocalPrimeProduct = true /\
  compact.multiplicityPreserved = true /\
  compact.orderErased = true /\
  compact.preservesExecutionOrder = false /\
  compact.proofAuthority = false /\
  compact.authorityStatusPreserved = true

def TraceQuotientProjectsToCompact
    (word : BoundedWord)
    (independence : TraceIndependenceRelation)
    (compact : CompactShell) : Prop :=
  ValidatedTraceQuotient word independence /\ compact.Valid

theorem bitstream_decoder_preserves_ordered_pole_stream
    (stream : BitMatrixStream)
    (word : BoundedWord)
    (hDecode : stream.DecodesToWord word) :
    word.ordered = true := by
  exact hDecode.right.left

theorem trace_quotient_generated_by_validated_flips
    (word : BoundedWord)
    (independence : TraceIndependenceRelation)
    (hTrace : ValidatedTraceQuotient word independence) :
    independence.onlyZeroResidueFlips = true := by
  exact hTrace.right.left

theorem compact_projection_is_order_erasing
    (compact : CompactShell)
    (hCompact : compact.Valid) :
    compact.orderErased = true /\ compact.preservesExecutionOrder = false := by
  exact And.intro hCompact.right.right.left hCompact.right.right.right.left

theorem compact_projection_is_not_order_source
    (compact : CompactShell)
    (hCompact : compact.Valid) :
    compact.proofAuthority = false /\ compact.preservesExecutionOrder = false := by
  exact And.intro hCompact.right.right.right.right.left hCompact.right.right.right.left

end Think.ModularWave
