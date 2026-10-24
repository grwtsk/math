# continuous_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26dc3dbe-377d-98fe-5150-1f6531d1a9d2",
  "kind": "lemma",
  "lexical_name": "continuous_iff'",
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
  "slug": "continuous-iff--6c52889084eb65651c229eda",
  "source": {
    "blob": "761a9d11eb9e1fd53fd84cf21997b48456a6a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c52889084eb65651c229edad81945883d91099d3d2b0717f42c1b6e7935507e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26dc3dbe-377d-98fe-5150-1f6531d1a9d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma continuous_iff'
    {M T : Type*} [TopologicalSpace T] (f : StdSimplex R M → T) :
    Continuous f ↔ ∀ (s : Finset M), Continuous (f ∘ map (Subtype.val : s → M)) := by
  rw [continuous_iff]
  refine ⟨fun h s ↦ h _ _, fun h ι _ g ↦ ?_⟩
  have := Fintype.ofFinite ι
  have := (h (Finset.image g .univ)).comp (continuous_map R (fun i ↦ ⟨g i, by grind⟩))
  rwa [Function.comp_assoc, ← map_comp'] at this

open topologicalSpaceInduced in
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761a9d11eb9e1fd53fd84cf21997b48456a6a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
