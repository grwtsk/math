# DecomposedQuantizationField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bc172b26c41046bd459c81742d93a69aa67fe6409e66b57306866fa9a92d816",
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
  "slug": "decomposedquantizationfield--cc641f033fe61ce02ffd4af6",
  "source": {
    "blob": "959dd78e81c3b0c42954aa2301667bbe6357eb85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc641f033fe61ce02ffd4af6e5a892e343f1574f21fae1dd5efa419e7203e0d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bc172b26c41046bd459c81742d93a69aa67fe6409e66b57306866fa9a92d816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–152.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959dd78e81c3b0c42954aa2301667bbe6357eb85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
