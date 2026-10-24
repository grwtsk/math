# tree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:431bcd71d88c42e2c7e0d701c8c8bc7104cee6ff2b7b956be4ad56f31ea4dbd7",
  "kind": "abbrev",
  "lexical_name": "tree",
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
  "slug": "tree--cb64b786d5d503ba4a37feb6",
  "source": {
    "blob": "b2d6d46dda6217e8d9b2c3762fd1f4d5b9dba35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartitionTests/Variante710741b21cf81e205985ce49dd5de563b9a7b15c7872769055c28a309c64c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb64b786d5d503ba4a37feb6d1e76e44a0514a07eff3434b0660b1aed33f0a03",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AvalanchePartitionTests/Variante710741b21cf81e205985ce49dd5de563b9a7b15c7872769055c28a309c64c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:431bcd71d88c42e2c7e0d701c8c8bc7104cee6ff2b7b956be4ad56f31ea4dbd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev tree : AvalanchePartitionTree global where
  Node := Fin 3
  nodeFintype := inferInstance
  nodeDecEq := inferInstance
  root := 0
  region p :=
    if p = 0 then ⟨Finset.univ⟩
    else if p = 1 then ⟨{0, 1}⟩
    else ⟨{2}⟩
  interior p :=
    if p = 0 then Finset.univ
    else if p = 1 then {0, 1}
    else {2}
  interior_inside_region := by native_decide
  children p := if p = 0 then {1, 2} else ∅
  rank p := if p = 0 then 1 else 0
  root_is_global := by native_decide
  child_inside_parent := by native_decide
  child_rank_lt := by native_decide
  children_cover_parent := by native_decide
  child_interiors_disjoint := by native_decide
  deterministicRuleId := "three-coordinate-top-down-v1"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AvalanchePartitionTests/Variante710741b21cf81e205985ce49dd5de563b9a7b15c7872769055c28a309c64c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AvalanchePartitionTests/Variante710741b21cf81e205985ce49dd5de563b9a7b15c7872769055c28a309c64c37.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d6d46dda6217e8d9b2c3762fd1f4d5b9dba35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
