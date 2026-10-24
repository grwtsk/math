# computeOverlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdfe5f50d17414b6c09638dfd7be641d3eaf8f2ec877b66333e26f084d88243d",
  "kind": "def",
  "lexical_name": "computeOverlap",
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
  "slug": "computeoverlap--456c5aa6de82192df7f95180",
  "source": {
    "blob": "793408bfe2ae51b30a350949dff4074009ae6042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Overlap/Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:456c5aa6de82192df7f95180026a77b09bcc831d92bd585129a3f7f248c57378",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Overlap/Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdfe5f50d17414b6c09638dfd7be641d3eaf8f2ec877b66333e26f084d88243d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeOverlap
    {cut : EvidenceCut}
    {left right : Finset (Span cut.text)}
    {context : ContextId}
    (comparator : MetadataComparator cut left right context)
    (leftProfile : MetadataProfile cut left context)
    (rightProfile : MetadataProfile cut right context)
    (requested : Array MetadataType) :
    TypedOverlap :=
  { fields :=
      requested.map fun metadataType =>
        ⟨metadataType,
          comparator.compare
            metadataType leftProfile rightProfile⟩
    aggregateScore := none
    completeForRule := true }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Overlap/Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Overlap/Variant95dbea7cab67d6cb04de6e16374f55b7b3e16772c429d5080ebea8cb56e3f4e8.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793408bfe2ae51b30a350949dff4074009ae6042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
