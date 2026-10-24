# toGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbe0bcf910c2ad8f1396f1eb4275b6b429a256f85a36081ceb91e2d6efccbfe2",
  "kind": "def",
  "lexical_name": "toGroup",
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
  "slug": "togroup--11efd39f91dc0dace4c31076",
  "source": {
    "blob": "cf5559da244ba694450aae53f0f708cdcfb6b70e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 143,
    "path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11efd39f91dc0dace4c31076c25476d8bbca64c11916467eff65ec89304b3ad8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbe0bcf910c2ad8f1396f1eb4275b6b429a256f85a36081ceb91e2d6efccbfe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGroup (h : ∀ r ∈ rels, FreeGroup.lift f r = 1) : PresentedGroup rels →* G :=
  QuotientGroup.lift (Subgroup.normalClosure rels) F (to_group_eq_one_of_mem_closure h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant7d8821bbff16b6ebeaec3d96bece406797bf21208aed4b167cbf92eef90a21dc.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5559da244ba694450aae53f0f708cdcfb6b70e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
