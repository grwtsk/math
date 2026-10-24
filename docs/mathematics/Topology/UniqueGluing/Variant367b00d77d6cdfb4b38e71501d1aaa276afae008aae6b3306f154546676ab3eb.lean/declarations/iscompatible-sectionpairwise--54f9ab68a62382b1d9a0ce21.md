# IsCompatible.sectionPairwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e14632742c9215949649c241353f6aabaa1d687f86f2e14d25a920b2f9564ec",
  "kind": "def",
  "lexical_name": "IsCompatible.sectionPairwise",
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
  "slug": "iscompatible-sectionpairwise--54f9ab68a62382b1d9a0ce21",
  "source": {
    "blob": "0a450ecb9c3a077330b2a03bda875b8166dfed94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 104,
    "path": "GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54f9ab68a62382b1d9a0ce2193791def25a8c67d3596451f316dd09da283abed",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e14632742c9215949649c241353f6aabaa1d687f86f2e14d25a920b2f9564ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsCompatible.sectionPairwise {sf} (h : IsCompatible F U sf) :
    ((Pairwise.diagram U).op ⋙ F).sections := by
  refine ⟨objPairwiseOfFamily sf, ?_⟩
  let G := (Pairwise.diagram U).op ⋙ F
  rintro (i | ⟨i, j⟩) (i' | ⟨i', j'⟩) (_ | _ | _ | _)
  · exact ConcreteCategory.congr_hom (G.map_id <| op <| Pairwise.single i) _
  · rfl
  · exact (h i' i).symm
  · exact ConcreteCategory.congr_hom (G.map_id <| op <| Pairwise.pair i j) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a450ecb9c3a077330b2a03bda875b8166dfed94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
