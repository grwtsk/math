# prefixIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0565da6a42b9edf78fc1dd76b725533d391b7ab47202f77b90901f7039f0e78a",
  "kind": "def",
  "lexical_name": "prefixIndex",
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
  "slug": "prefixindex--6ab3870b3dbb8c78e65020c2",
  "source": {
    "blob": "14ebf711ef62d8e0f0b4c76ab0a20c2badc52048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 284,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ab3870b3dbb8c78e65020c2beb502d84359ccf68abdab18208684cf50cf1789",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0565da6a42b9edf78fc1dd76b725533d391b7ab47202f77b90901f7039f0e78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prefixIndex {N : ℕ} (x : VaughanScaleIndex N) :
    Fin (x.1 + 1) → VaughanScaleIndex N :=
  Fin.castLE (Nat.succ_le_iff.mpr x.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variant95a85ced57eae1207957edccc2b277bc9ea7b8a0195c51cd96afa95a74b299c4.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ebf711ef62d8e0f0b4c76ab0a20c2badc52048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
