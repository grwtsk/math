# DecomposedQuantizationField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71c2b3d493c8e6e6cd4db7f7f07d7ed45122f3ee83983b6ee9b17a578e5cda64",
  "kind": "structure",
  "lexical_name": "DecomposedQuantizationField",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "decomposedquantizationfield--64a0ae2fbf26cbbcaa3d68ad",
  "source": {
    "blob": "e85cc32184c0b071017fc2b537ac6691f093e904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64a0ae2fbf26cbbcaa3d68ad17984ccb581d4e8c87b99c2ede555931b875ef1b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71c2b3d493c8e6e6cd4db7f7f07d7ed45122f3ee83983b6ee9b17a578e5cda64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DecomposedQuantizationField
    (decomposition : FiniteDecomposition)
    (compiler : CompilerTarget) where
  bitsAt : decomposition.Piece → ResolutionBits
  bounded :
    ∀ piece, (bitsAt piece).value ≤ compiler.wordBits
  sourceEvidenceAt : decomposition.Piece → ProgressiveEvidence
  quantizedEvidenceAt : decomposition.Piece → ProgressiveEvidence
  quantized_derives_from_source : ∀ piece,
    (sourceEvidenceAt piece).identity ∈
      (quantizedEvidenceAt piece).derivesFrom
  quantized_authority_exact : ∀ piece,
    (quantizedEvidenceAt piece).authority =
      (sourceEvidenceAt piece).authority
  quantized_evidence_class_exact : ∀ piece,
    (quantizedEvidenceAt piece).evidenceClass =
      (sourceEvidenceAt piece).evidenceClass
  quantized_assurance_exact : ∀ piece,
    (quantizedEvidenceAt piece).level =
      (sourceEvidenceAt piece).level
  sourceClaimStatusAt : decomposition.Piece → ClaimStatus
  quantizedClaimStatusAt : decomposition.Piece → ClaimStatus
  quantized_claim_status_exact : ∀ piece,
    quantizedClaimStatusAt piece = sourceClaimStatusAt piece

namespace DecomposedQuantizationField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant75abe2faaaf4dc77984dd144c067ede5e65cc5c2c9b035dd66df2ee1bbbbb66f.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85cc32184c0b071017fc2b537ac6691f093e904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
