# coverEntropyEntourage_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e1986ff-573c-f460-9f14-a9e2c323460e",
  "kind": "lemma",
  "lexical_name": "coverEntropyEntourage_nonneg",
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
  "slug": "coverentropyentourage-nonneg--d0e2b89b7a57d50e5e29cd07",
  "source": {
    "blob": "f24095fc7ce6b73eccdfe13b56383ef1a997de95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 380,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0e2b89b7a57d50e5e29cd0769d025f127865306325f9c7c0d710855d535e7e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e1986ff-573c-f460-9f14-a9e2c323460e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverEntropyEntourage_nonneg (T : X → X) (h : F.Nonempty) (U : SetRel X X) :
    0 ≤ coverEntropyEntourage T F U :=
  (coverEntropyInfEntourage_nonneg T h U).trans
    (coverEntropyInfEntourage_le_coverEntropyEntourage T F U)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantf5c8e6e4f0a465001d46c48465a72db4e92f93f5bc966cb848f73983a2001b46.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24095fc7ce6b73eccdfe13b56383ef1a997de95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
