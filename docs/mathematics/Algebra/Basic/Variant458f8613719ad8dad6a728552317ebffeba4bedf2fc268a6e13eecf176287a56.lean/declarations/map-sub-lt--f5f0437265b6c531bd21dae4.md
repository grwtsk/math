# map_sub_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ec2df2d98249cf416c09a55d151946533574627",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f434e255-9ed3-bedd-9331-e9961ebf687a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df128d25-d7c5-bdb0-000a-21ddae9b2888",
  "kind": "theorem",
  "lexical_name": "map_sub_lt",
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
  "slug": "map-sub-lt--f5f0437265b6c531bd21dae4",
  "source": {
    "blob": "2ec2df2d98249cf416c09a55d151946533574627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 275,
    "path": "GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f0437265b6c531bd21dae45897184dde5edce244c43cde4e35973906fdc853",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df128d25-d7c5-bdb0-000a-21ddae9b2888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_sub_lt {x y : R} {g : Γ₀} (hx : v x < g) (hy : v y < g) : v (x - y) < g := by
  rw [sub_eq_add_neg]
  exact v.map_add_lt hx <| (v.map_neg y).trans_lt hy

variable {x y : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant458f8613719ad8dad6a728552317ebffeba4bedf2fc268a6e13eecf176287a56.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec2df2d98249cf416c09a55d151946533574627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
