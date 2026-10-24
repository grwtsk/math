# StrictConvex.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ff93a57-1e50-0137-9d43-3e74b4955624",
  "kind": "theorem",
  "lexical_name": "StrictConvex.add",
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
  "slug": "strictconvex-add--e0b4a4acb4ae1ba8075fa275",
  "source": {
    "blob": "ec682618bfa293f81b08dd31e9813916a2e93f5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 221,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b4a4acb4ae1ba8075fa275890a4be5be28c9462706b18d24989d1e7d89371b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ff93a57-1e50-0137-9d43-3e74b4955624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvex.add (hs : StrictConvex 𝕜 s) (ht : StrictConvex 𝕜 t) :
    StrictConvex 𝕜 (s + t) := by
  rintro _ ⟨v, hv, w, hw, rfl⟩ _ ⟨x, hx, y, hy, rfl⟩ h a b ha hb hab
  rw [smul_add, smul_add, add_add_add_comm]
  obtain rfl | hvx := eq_or_ne v x
  · refine interior_mono (add_subset_add (singleton_subset_iff.2 hv) Subset.rfl) ?_
    rw [Convex.combo_self hab, singleton_add]
    exact
      (isOpenMap_add_left _).image_interior_subset _
        (mem_image_of_mem _ <| ht hw hy (ne_of_apply_ne _ h) ha hb hab)
  exact
    subset_interior_add_left
      (add_mem_add (hs hv hx hvx ha hb hab) <| ht.convex hw hy ha.le hb.le hab)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant067bc0310631f27703267bca165ddcbe5ed0ca77cd3cb3a0499c47f68e447016.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec682618bfa293f81b08dd31e9813916a2e93f5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
