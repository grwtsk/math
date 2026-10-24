# centralizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:063d6e375fb6e9d1700bf3ed5f41e9df0bcdb4d24fdc0ad2ae5a62050cfce461",
  "kind": "def",
  "lexical_name": "centralizer",
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
  "slug": "centralizer--9dd6cd9dd4d67b15848d9b53",
  "source": {
    "blob": "c4f91aae6d1bdff91dc49c930fa388fa3d8b294e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 161,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dd6cd9dd4d67b15848d9b53c5d50137ddea3146a82a4b0e0d289a2f5b73011e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:063d6e375fb6e9d1700bf3ed5f41e9df0bcdb4d24fdc0ad2ae5a62050cfce461`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def centralizer : Subsemigroup M where
  carrier := S.centralizer
  mul_mem' := Set.mul_mem_centralizer
#align subsemigroup.centralizer Subsemigroup.centralizer
#align add_subsemigroup.centralizer AddSubsemigroup.centralizer

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variantfb3e0d034348ac038762989d170a80e0845dcbba098b80cc8caf5f520794bad9.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f91aae6d1bdff91dc49c930fa388fa3d8b294e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
