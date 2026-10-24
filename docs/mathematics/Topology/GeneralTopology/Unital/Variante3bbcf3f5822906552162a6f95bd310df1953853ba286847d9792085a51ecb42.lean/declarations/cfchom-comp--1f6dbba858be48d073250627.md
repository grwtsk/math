# cfcHom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:385291af-1d19-cf75-2a37-61b4c4830568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09ccbf64-edc9-7ca5-b77a-4042635dc9f1",
  "kind": "theorem",
  "lexical_name": "cfcHom_comp",
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
  "slug": "cfchom-comp--1f6dbba858be48d073250627",
  "source": {
    "blob": "539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f6dbba858be48d073250627725bd6515956bd234bcce1a3402ab489a27e5048",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09ccbf64-edc9-7ca5-b77a-4042635dc9f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cfcHom_comp [UniqueHom R A] (f : C(spectrum R a, R))
    (f' : C(spectrum R a, spectrum R (cfcHom ha f)))
    (hff' : ∀ x, f x = f' x) (g : C(spectrum R (cfcHom ha f), R)) :
    cfcHom ha (g.comp f') = cfcHom (cfcHom_predicate ha f) g := by
  let φ : C(spectrum R (cfcHom ha f), R) →⋆ₐ[R] A :=
    (cfcHom ha).comp <| ContinuousMap.compStarAlgHom' R R f'
  suffices cfcHom (cfcHom_predicate ha f) = φ from DFunLike.congr_fun this.symm g
  refine cfcHom_eq_of_continuous_of_map_id (cfcHom_predicate ha f) φ ?_ ?_
  · exact cfcHom_continuous ha |>.comp f'.continuous_precomp
  · simp only [φ, StarAlgHom.comp_apply, ContinuousMap.compStarAlgHom'_apply]
    congr
    ext x
    simp [hff']

end cfcHom

section cfcL

/-- `cfcHom` bundled as a continuous linear map. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variante3bbcf3f5822906552162a6f95bd310df1953853ba286847d9792085a51ecb42.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539c3fa3289e7ac31b9c20ec8c7aeb536c58dfdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
