# InvolutionValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:258583abbf80703ff54b3d605d32e4d8f8e8a44d5bb9c9699d826d4ec1876f27",
  "kind": "def",
  "lexical_name": "InvolutionValid",
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
  "slug": "involutionvalid--6afc78fc3cfb3fb6bd41c9d5",
  "source": {
    "blob": "4c4f1a17c9d20a23a0f123ef04f9a5d9a93e51b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CriticalInvolution/Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6afc78fc3cfb3fb6bd41c9d5171cfca2a02b3a147aacb5d183f50160dd40a64f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CriticalInvolution/Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:258583abbf80703ff54b3d605d32e4d8f8e8a44d5bb9c9699d826d4ec1876f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InvolutionValid (declaration : FullModelDeclaration) : Prop :=
  let candidate := declaration.involution
  candidate.version = 1 ∧ 0 < candidate.dimension ∧
  candidate.forward.length = candidate.dimension ∧
  candidate.inverse.length = candidate.dimension ∧
  (∀ entry ∈ candidate.forward, entry.index < candidate.dimension) ∧
  (∀ entry ∈ candidate.inverse, entry.index < candidate.dimension) ∧
  (∀ state ∈ signedStates candidate.dimension,
    (applySigned candidate.forward state).bind (applySigned candidate.inverse) = some state ∧
    (applySigned candidate.inverse state).bind (applySigned candidate.forward) = some state) ∧
  (∀ first ∈ signedStates candidate.dimension, ∀ second ∈ signedStates candidate.dimension,
    (blockAction candidate (first, second)).bind (blockAction candidate) = some (first, second)) ∧
  (2 * candidate.dimension) ^ 2 + 4 * candidate.dimension ≤
    declaration.coreSnapshot.limits.maxWork

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CriticalInvolution/Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CriticalInvolution/Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c4f1a17c9d20a23a0f123ef04f9a5d9a93e51b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
