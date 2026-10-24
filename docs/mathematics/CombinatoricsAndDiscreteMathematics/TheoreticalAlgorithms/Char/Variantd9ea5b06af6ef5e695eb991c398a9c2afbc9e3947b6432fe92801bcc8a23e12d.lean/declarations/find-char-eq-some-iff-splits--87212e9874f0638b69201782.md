# find?_char_eq_some_iff_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20d236c1-3092-98ee-8092-648e219f705c",
  "kind": "theorem",
  "lexical_name": "find?_char_eq_some_iff_splits",
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
  "slug": "find-char-eq-some-iff-splits--87212e9874f0638b69201782",
  "source": {
    "blob": "c6ff71aa89a34fce17c76d1835c57034ab33f6a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87212e9874f0638b69201782ebd3eb8eca9d11720b7c821ac0ba845857fccfc2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20d236c1-3092-98ee-8092-648e219f705c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find?_char_eq_some_iff_splits {c : Char} {s : String} {pos : s.Pos} :
    s.find? c = some pos ↔ ∃ t u, pos.Splits t (singleton c ++ u) ∧ c ∉ t.toList := by
  simp only [find?_eq_find?_toSlice, Option.map_eq_some_iff,
    Slice.find?_char_eq_some_iff_splits]
  constructor
  · rintro ⟨q, ⟨t, u, hsplit, hnotin⟩, rfl⟩
    exact ⟨t, u, Slice.Pos.splits_ofToSlice_iff.mpr hsplit, hnotin⟩
  · rintro ⟨t, u, hsplit, hnotin⟩
    exact ⟨pos.toSlice, ⟨t, u, Pos.splits_toSlice_iff.mpr hsplit, hnotin⟩, by simp⟩

@[cbv_eval, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ff71aa89a34fce17c76d1835c57034ab33f6a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
