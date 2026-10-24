# FrechetUrysohnSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e1d40ba3ae4347167bbb56e2b4ac942f258be57693c3d7212281ed46f203948",
  "kind": "class",
  "lexical_name": "FrechetUrysohnSpace",
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
  "slug": "frecheturysohnspace--40df9a2bd446276b1d7293d6",
  "source": {
    "blob": "b9326a1eef80784cf5b6524a659ced02227e855d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40df9a2bd446276b1d7293d6869d92c3c7fc2915a4d7724246fd29d44f101157",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e1d40ba3ae4347167bbb56e2b4ac942f258be57693c3d7212281ed46f203948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class FrechetUrysohnSpace : Prop where
  closure_subset_seqClosure : ∀ s : Set X, closure s ⊆ seqClosure s

/-- A topological space is said to be a *sequential space* if any sequentially closed set in this
space is closed. This condition is weaker than being a Fréchet-Urysohn space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9326a1eef80784cf5b6524a659ced02227e855d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
