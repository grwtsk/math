# pullback.fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:877ae3ed8b857fbe0c6ea86c590dafaf9ac584253cdaceff1888ee94a5118f76",
  "kind": "def",
  "lexical_name": "pullback.fst",
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
  "slug": "pullback-fst--faf6d2a978c5476f3fb0f524",
  "source": {
    "blob": "493c277fecc94ee98f27892b1872aa0df203ed68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faf6d2a978c5476f3fb0f5245770c6c5f05f1589cdcba1d89f1fcb050b0c9d58",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:877ae3ed8b857fbe0c6ea86c590dafaf9ac584253cdaceff1888ee94a5118f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullback.fst : pullback f g ⟶ X :=
  TopCat.ofHom
  { toFun := fun ⟨⟨x, _⟩, _⟩ ↦ x
    continuous_toFun := Continuous.comp continuous_fst continuous_subtype_val }

/--
The projection from the pullback to the second component.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant338b427afb21568494cd5196ef442eb758028e8d65276a7c63719fb2d48daa1d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493c277fecc94ee98f27892b1872aa0df203ed68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
