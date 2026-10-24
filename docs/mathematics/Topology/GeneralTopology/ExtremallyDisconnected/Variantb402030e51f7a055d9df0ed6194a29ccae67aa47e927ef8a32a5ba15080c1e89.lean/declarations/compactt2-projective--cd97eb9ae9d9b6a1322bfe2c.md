# CompactT2.Projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0651562c48b9a283e89772d580e865e670ad52f3b388d9da698b0f5c696b369",
  "kind": "def",
  "lexical_name": "CompactT2.Projective",
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
  "slug": "compactt2-projective--cd97eb9ae9d9b6a1322bfe2c",
  "source": {
    "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd97eb9ae9d9b6a1322bfe2c6b09037c8b829b4e25df32b1e94c928886cf6899",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0651562c48b9a283e89772d580e865e670ad52f3b388d9da698b0f5c696b369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompactT2.Projective : Prop :=
  ∀ {Y Z : Type u} [TopologicalSpace Y] [TopologicalSpace Z],
    ∀ [CompactSpace Y] [T2Space Y] [CompactSpace Z] [T2Space Z],
      ∀ {f : X → Z} {g : Y → Z} (_ : Continuous f) (_ : Continuous g) (_ : Surjective g),
        ∃ h : X → Y, Continuous h ∧ g ∘ h = f
#align compact_t2.projective CompactT2.Projective

variable {X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef74f11877004731dc8c1a4097909f24c497add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
