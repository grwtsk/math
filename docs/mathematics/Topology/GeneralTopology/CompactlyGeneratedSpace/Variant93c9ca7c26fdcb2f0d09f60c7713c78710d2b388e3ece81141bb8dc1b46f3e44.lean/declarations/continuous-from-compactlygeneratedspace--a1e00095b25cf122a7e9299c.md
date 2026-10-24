# continuous_from_compactlyGeneratedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9139fd17-d1c2-8834-8610-8598c2cd1849",
  "kind": "lemma",
  "lexical_name": "continuous_from_compactlyGeneratedSpace",
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
  "slug": "continuous-from-compactlygeneratedspace--a1e00095b25cf122a7e9299c",
  "source": {
    "blob": "d3d32971837ad75ce581df1c767f199fede62fa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e00095b25cf122a7e9299c14626800a90e1e7873c3d139fb4c77592b8edabb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9139fd17-d1c2-8834-8610-8598c2cd1849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_from_compactlyGeneratedSpace [CompactlyGeneratedSpace X] (f : X → Y)
    (h : ∀ (K : Type u) [TopologicalSpace K], [CompactSpace K] → [T2Space K] →
      (∀ g : K → X, Continuous g → Continuous (f ∘ g))) : Continuous f :=
  continuous_from_uCompactlyGeneratedSpace f fun K ⟨g, hg⟩ ↦ h K g hg

/-- Let `f : X → Y`. Suppose that to prove that `f` is continuous, it suffices to show that
for every compact Hausdorff space `K` and every continuous map `g : K → X`, `f ∘ g` is continuous.
Then `X` is compactly generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant93c9ca7c26fdcb2f0d09f60c7713c78710d2b388e3ece81141bb8dc1b46f3e44.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d32971837ad75ce581df1c767f199fede62fa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
