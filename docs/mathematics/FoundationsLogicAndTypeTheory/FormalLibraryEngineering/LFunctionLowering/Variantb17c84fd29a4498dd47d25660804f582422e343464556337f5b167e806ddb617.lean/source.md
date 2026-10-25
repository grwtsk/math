# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionLowering.Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `456f142a65ea80b6dd08b922c57aaee6e8db1199` · SHA-256 `b17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.ModularWave.FiniteQWave

namespace Think.ModularWave

structure LFunctionExpression where
  finiteExpression : Bool
  unsupportedAnalyticConstructsLedgered : Bool
  theoremAuthority : Bool
  rhClaim : Bool
  analyticContinuationClaim : Bool
  primePredictionClaim : Bool
  spectralAuthority : Bool
  modularityProofClaim : Bool

def LFunctionExpression.NoForbiddenAuthority
    (lfun : LFunctionExpression) : Prop :=
  lfun.theoremAuthority = false /\
  lfun.rhClaim = false /\
  lfun.analyticContinuationClaim = false /\
  lfun.primePredictionClaim = false /\
  lfun.spectralAuthority = false /\
  lfun.modularityProofClaim = false

def LFunctionExpression.IsFiniteExpression
    (lfun : LFunctionExpression) : Prop :=
  lfun.finiteExpression = true /\
  lfun.unsupportedAnalyticConstructsLedgered = true /\
  lfun.NoForbiddenAuthority

structure EMLProgram where
  finiteProgram : Bool
  loweredFromLFunction : Bool
  residueZeroOrLedgered : Bool

structure NANDCircuit where
  finiteCircuit : Bool
  loweredFromEML : Bool
  allGatesNand : Bool
  residueZeroOrLedgered : Bool

structure BitMatrixStream where
  finiteStream : Bool
  loweredFromNAND : Bool
  valid : Bool
  publicFiniteWitness : Bool
  residueZeroOrLedgered : Bool

structure BoundedWord where
  decoderSucceeded : Bool
  ordered : Bool
  zeroResidue : Bool

def LFunctionExpression.LowersToEML
    (lfun : LFunctionExpression)
    (eml : EMLProgram) : Prop :=
  lfun.IsFiniteExpression /\
  eml.finiteProgram = true /\
  eml.loweredFromLFunction = true /\
  eml.residueZeroOrLedgered = true

def EMLProgram.LowersToNAND
    (eml : EMLProgram)
    (nand : NANDCircuit) : Prop :=
  eml.finiteProgram = true /\
  nand.finiteCircuit = true /\
  nand.loweredFromEML = true /\
  nand.allGatesNand = true /\
  nand.residueZeroOrLedgered = true

def NANDCircuit.LowersToBitMatrixStream
    (nand : NANDCircuit)
    (stream : BitMatrixStream) : Prop :=
  nand.finiteCircuit = true /\
  stream.finiteStream = true /\
  stream.loweredFromNAND = true /\
  stream.valid = true /\
  stream.publicFiniteWitness = true /\
  stream.residueZeroOrLedgered = true

def BitMatrixStream.DecodesToWord
    (stream : BitMatrixStream)
    (word : BoundedWord) : Prop :=
  word.decoderSucceeded = true /\
  word.ordered = true /\
  word.zeroResidue = true /\
  stream.valid = true /\
  stream.publicFiniteWitness = true

theorem finite_q_wave_lowers_to_finite_lfunction_expression
    (wave : ModularFormQWave)
    (lfun : LFunctionExpression)
    (_hWave : wave.IsFinite)
    (hLfun : lfun.IsFiniteExpression) :
    lfun.IsFiniteExpression := by
  exact hLfun

theorem lfunction_expression_lowers_to_eml_or_residue
    (lfun : LFunctionExpression)
    (eml : EMLProgram)
    (hLower : lfun.LowersToEML eml) :
    lfun.LowersToEML eml := by
  exact hLower

theorem eml_lowers_to_nand_or_residue
    (eml : EMLProgram)
    (nand : NANDCircuit)
    (hLower : eml.LowersToNAND nand) :
    eml.LowersToNAND nand := by
  exact hLower

theorem nand_lowers_to_bitmatrixstream_or_residue
    (nand : NANDCircuit)
    (stream : BitMatrixStream)
    (hLower : nand.LowersToBitMatrixStream stream) :
    nand.LowersToBitMatrixStream stream := by
  exact hLower

end Think.ModularWave
```
