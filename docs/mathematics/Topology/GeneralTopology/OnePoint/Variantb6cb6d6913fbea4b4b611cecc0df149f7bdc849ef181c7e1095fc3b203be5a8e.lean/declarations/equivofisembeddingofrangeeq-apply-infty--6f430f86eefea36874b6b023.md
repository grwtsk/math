# equivOfIsEmbeddingOfRangeEq_apply_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4a73751-5f92-98c4-add8-9fb426e297ff",
  "kind": "lemma",
  "lexical_name": "equivOfIsEmbeddingOfRangeEq_apply_infty",
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
  "slug": "equivofisembeddingofrangeeq-apply-infty--6f430f86eefea36874b6b023",
  "source": {
    "blob": "83555410976d8c68660209dce7cf3d24711cb52c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 640,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f430f86eefea36874b6b02324665a2103c521317430894f2d85c1828542f67f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4a73751-5f92-98c4-add8-9fb426e297ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivOfIsEmbeddingOfRangeEq_apply_infty :
    equivOfIsEmbeddingOfRangeEq y f hf hy ∞ = y :=
  rfl

end Uniqueness

end OnePoint

namespace Homeomorph

variable [TopologicalSpace X] [TopologicalSpace Y]

open OnePoint

/-- Extend a homeomorphism of topological spaces
to the homeomorphism of their one point compactifications. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variantb6cb6d6913fbea4b4b611cecc0df149f7bdc849ef181c7e1095fc3b203be5a8e.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83555410976d8c68660209dce7cf3d24711cb52c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
