# mkHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5057f9d270a88fd6e6951bceaf87d51a98f4d24c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c139e77fbad152203b63ec017c27422c345366a71813cd2a3925e65f48d2d6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a50c2606-a4b3-b325-b59a-0a657312b990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c94091f-cc6a-8f04-d0ea-fa25f1fb3a78",
  "kind": "theorem",
  "lexical_name": "mkHom_apply",
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
  "slug": "mkhom-apply--76d05408f8bebef565e7a7a7",
  "source": {
    "blob": "5057f9d270a88fd6e6951bceaf87d51a98f4d24c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 274,
    "path": "GRWTSK/Topology/MetricTopology/SemiNormedGrp/Variant1c139e77fbad152203b63ec017c27422c345366a71813cd2a3925e65f48d2d6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76d05408f8bebef565e7a7a703fa8b64027094583b6ebb9da189aa41b6999b92",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SemiNormedGrp/Variant1c139e77fbad152203b63ec017c27422c345366a71813cd2a3925e65f48d2d6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c94091f-cc6a-8f04-d0ea-fa25f1fb3a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkHom_apply {M N : Type u} [SeminormedAddCommGroup M] [SeminormedAddCommGroup N]
    (f : NormedAddGroupHom M N) (i : f.NormNoninc) (x) :
    mkHom f i x = f x :=
  rfl

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SemiNormedGrp/Variant1c139e77fbad152203b63ec017c27422c345366a71813cd2a3925e65f48d2d6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SemiNormedGrp/Variant1c139e77fbad152203b63ec017c27422c345366a71813cd2a3925e65f48d2d6e.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5057f9d270a88fd6e6951bceaf87d51a98f4d24c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
