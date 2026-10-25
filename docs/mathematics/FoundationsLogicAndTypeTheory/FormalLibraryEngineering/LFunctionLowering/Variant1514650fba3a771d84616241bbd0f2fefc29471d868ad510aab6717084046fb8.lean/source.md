# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionLowering.Variant1514650fba3a771d84616241bbd0f2fefc29471d868ad510aab6717084046fb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23a39396af8af07d9ea7881a52daae3ed2f8f865` · SHA-256 `455a7b2742d7fb663dc892113ec5d0241a35199391c105f5a6d6663e68711eab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionExpression.Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LFunctionExpression.Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617","mathematical_subject":"Foundations.Unclassified","original_sha256":"b17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ModularWave/LFunctionLowering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.ModularWave.FiniteQWave


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionExpression.Variantb17c84fd29a4498dd47d25660804f582422e343464556337f5b167e806ddb617

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
