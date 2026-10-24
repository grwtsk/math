# eq_iff_flatten_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66466cd8-531f-aa1d-916a-03bc0f99000b",
  "kind": "theorem",
  "lexical_name": "eq_iff_flatten_eq",
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
  "slug": "eq-iff-flatten-eq--2c50cc00657b07a7d42f3dd2",
  "source": {
    "blob": "246b5ae394f20250df7c7fd86e3553ab8150420a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2040,
    "line": 2015,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c50cc00657b07a7d42f3dd2c4d412a4fb122333c442412059c44bdbdce3b3b9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66466cd8-531f-aa1d-916a-03bc0f99000b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2015–2040.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_iff_flatten_eq {xss xss' : Vector (Vector α n) m} :
    xss = xss' ↔ xss.flatten = xss'.flatten := by
  induction xss using vector₂_induction with | of xss h₁ h₂
  induction xss' using vector₂_induction with | of xss' h₁' h₂'
  simp only [eq_mk, flatten_mk, Array.map_map, Function.comp_apply, Array.map_subtype,
    Array.unattach_attach, Array.map_id_fun', id_eq]
  constructor
  · intro h
    suffices xss = xss' by simp_all
    apply Array.ext_getElem?
    intro i
    replace h := congrArg (fun xss => xss[i]?.map (fun xs => xs.toArray)) h
    simpa [Option.map_pmap] using h
  · intro h
    have w : xss.map Array.size = xss'.map Array.size := by
      ext i h h'
      · simp_all
      · simp only [Array.getElem_map]
        rw [h₂ _ (by simp), h₂' _ (by simp)]
    have := Array.eq_iff_flatten_eq.mpr ⟨h, w⟩
    subst this
    rfl


/-! ### flatMap -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2b1858ea3c3058f9e36464924be4c3ecfe3bf8b4fae68a4af365ba6edf29279a.lean#L2015).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `246b5ae394f20250df7c7fd86e3553ab8150420a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
