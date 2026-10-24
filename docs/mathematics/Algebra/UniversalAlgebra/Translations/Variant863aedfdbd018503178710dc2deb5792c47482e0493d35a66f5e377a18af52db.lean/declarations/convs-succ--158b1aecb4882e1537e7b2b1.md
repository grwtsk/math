# convs'_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "703757d1178e4389d1edadfee127ec45e733bf36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4d1f835-fdc1-0641-3627-095a11a6c012",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a31e3302-9b2f-764e-b636-caf9fb8ac523",
  "kind": "theorem",
  "lexical_name": "convs'_succ",
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
  "slug": "convs-succ--158b1aecb4882e1537e7b2b1",
  "source": {
    "blob": "703757d1178e4389d1edadfee127ec45e733bf36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 321,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:158b1aecb4882e1537e7b2b1dd2833f2e08f7da8e70532ccf54fd586c5fafaac",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a31e3302-9b2f-764e-b636-caf9fb8ac523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs'_succ :
    (of v).convs' (n + 1) = ⌊v⌋ + 1 / (of (fract v)⁻¹).convs' n := by
  rcases eq_or_ne (fract v) 0 with h | h
  · obtain ⟨a, rfl⟩ : ∃ a : ℤ, v = a := ⟨⌊v⌋, eq_of_sub_eq_zero h⟩
    rw [convs'_of_int, fract_intCast, inv_zero, ← cast_zero, convs'_of_int, cast_zero,
      div_zero, add_zero, floor_intCast]
  · rw [convs', of_h_eq_floor, add_right_inj, convs'Aux_succ_some (of_s_head h)]
    exact congr_arg (1 / ·) (by rw [convs', of_h_eq_floor, add_right_inj, of_s_tail])

end Values

end sequence

end GenContFract
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `703757d1178e4389d1edadfee127ec45e733bf36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
