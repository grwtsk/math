# toLinearPMap_graph_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa5ee712-5ade-63ad-6336-901ad71ac064",
  "kind": "theorem",
  "lexical_name": "toLinearPMap_graph_eq",
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
  "slug": "tolinearpmap-graph-eq--8ece3360afdc0e0a281db0f5",
  "source": {
    "blob": "177776ef55055397436abf880aa7fbb25c2ebed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 976,
    "line": 960,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ece3360afdc0e0a281db0f51f258996858027e4ac4e8b830fa7bd0c66afcd5f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa5ee712-5ade-63ad-6336-901ad71ac064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–976.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearPMap_graph_eq (g : Submodule R (E × F))
    (hg : ∀ (x : E × F) (_hx : x ∈ g) (_hx' : x.fst = 0), x.snd = 0) :
    g.toLinearPMap.graph = g := by
  ext ⟨x_fst, x_snd⟩
  constructor <;> intro hx
  · rw [LinearPMap.mem_graph_iff] at hx
    rcases hx with ⟨y, hx1, hx2⟩
    convert g.mem_graph_toLinearPMap hg y using 1
    exact Prod.ext hx1.symm hx2.symm
  rw [LinearPMap.mem_graph_iff]
  have hx_fst : x_fst ∈ g.map (LinearMap.fst R E F) := by
    simp only [mem_map, LinearMap.fst_apply, Prod.exists, exists_and_right, exists_eq_right]
    exact ⟨x_snd, hx⟩
  refine ⟨⟨x_fst, hx_fst⟩, Subtype.coe_mk x_fst hx_fst, ?_⟩
  rw [toLinearPMap_apply_aux hg]
  exact (existsUnique_from_graph @hg hx_fst).unique (valFromGraph_mem hg hx_fst) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177776ef55055397436abf880aa7fbb25c2ebed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
