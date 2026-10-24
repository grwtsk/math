# fixingSubgroupEquivFixingSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39d2045d7f56ad5db73459ff07332bb5d5c227bcd31f9877733fe44f847f6b4d",
  "kind": "def",
  "lexical_name": "fixingSubgroupEquivFixingSubgroup",
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
  "slug": "fixingsubgroupequivfixingsubgroup--8e5bcaac16e487f155d9426e",
  "source": {
    "blob": "87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 252,
    "path": "GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5bcaac16e487f155d9426ea3cbe0099bfd1493bdc78a5e4f6d797e2d6ee7f8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39d2045d7f56ad5db73459ff07332bb5d5c227bcd31f9877733fe44f847f6b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixingSubgroupEquivFixingSubgroup (hg : g • t = s) :
    fixingSubgroup M t ≃* fixingSubgroup M s :=
  ((MulAut.conj g).subgroupMap (fixingSubgroup M t)).trans
    (MulEquiv.subgroupCongr (fixingSubgroup_map_conj_eq hg))

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
