# UniformCauchySeqOnFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2f03f200c3779345f82431ca4e37a9d306f5bd9b609f7e7749b9fe4b2078da2",
  "kind": "def",
  "lexical_name": "UniformCauchySeqOnFilter",
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
  "slug": "uniformcauchyseqonfilter--d2ab1946e7b4573c27017e3d",
  "source": {
    "blob": "e25f3cc619dcb97fcc87aeafa5e2ca9b374aed6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 364,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2ab1946e7b4573c27017e3de6ebcaf918e34cef5b24a70b67d4b1374b8cbe17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2f03f200c3779345f82431ca4e37a9d306f5bd9b609f7e7749b9fe4b2078da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniformCauchySeqOnFilter (F : ι → α → β) (p : Filter ι) (p' : Filter α) : Prop :=
  ∀ u ∈ 𝓤 β, ∀ᶠ m : (ι × ι) × α in (p ×ˢ p) ×ˢ p', (F m.fst.fst m.snd, F m.fst.snd m.snd) ∈ u

/-- A sequence is uniformly Cauchy if eventually all of its pairwise differences are
uniformly bounded -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant6475e95ada450861705ce4b678a6f6ed48d955632fcb7a7815fdfc4e64ebd392.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e25f3cc619dcb97fcc87aeafa5e2ca9b374aed6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
