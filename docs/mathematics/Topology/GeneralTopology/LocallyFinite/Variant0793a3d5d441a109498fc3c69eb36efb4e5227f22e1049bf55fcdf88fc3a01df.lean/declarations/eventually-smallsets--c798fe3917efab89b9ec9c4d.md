# eventually_smallSets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f12cc40-8c55-a765-52c2-b35f0f931884",
  "kind": "theorem",
  "lexical_name": "eventually_smallSets",
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
  "slug": "eventually-smallsets--c798fe3917efab89b9ec9c4d",
  "source": {
    "blob": "392c8329cf54d59ca4b2362fa6c37faeb7a6fcb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c798fe3917efab89b9ec9c4dc02ce895773bb889c06053df0dc6d31cc3a277b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f12cc40-8c55-a765-52c2-b35f0f931884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem eventually_smallSets (hf : LocallyFinite f) (x : X) :
    ∀ᶠ s in (𝓝 x).smallSets, { i | (f i ∩ s).Nonempty }.Finite :=
  locallyFinite_iff_smallSets.mp hf x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant0793a3d5d441a109498fc3c69eb36efb4e5227f22e1049bf55fcdf88fc3a01df.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392c8329cf54d59ca4b2362fa6c37faeb7a6fcb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
