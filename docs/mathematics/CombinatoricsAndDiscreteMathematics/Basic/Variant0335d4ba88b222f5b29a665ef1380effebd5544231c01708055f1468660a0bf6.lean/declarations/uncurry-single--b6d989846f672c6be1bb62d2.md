# uncurry_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78eafce9-d28d-1943-01b4-d9b921732cb5",
  "kind": "lemma",
  "lexical_name": "uncurry_single",
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
  "slug": "uncurry-single--b6d989846f672c6be1bb62d2",
  "source": {
    "blob": "e2294071c5b74e40ce19ff829c7c54584134019a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1103,
    "line": 1099,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0335d4ba88b222f5b29a665ef1380effebd5544231c01708055f1468660a0bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6d989846f672c6be1bb62d2ad28147d85ef4271c3665527ea830fa00a28ccf3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0335d4ba88b222f5b29a665ef1380effebd5544231c01708055f1468660a0bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78eafce9-d28d-1943-01b4-d9b921732cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1099–1103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uncurry_single (a : α) (b : β) (m : M) :
    (single a (single b m)).uncurry = single (a, b) m := by
  ext ⟨x, y⟩
  rcases eq_or_ne a x with rfl | hne <;> classical simp [single_apply, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0335d4ba88b222f5b29a665ef1380effebd5544231c01708055f1468660a0bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0335d4ba88b222f5b29a665ef1380effebd5544231c01708055f1468660a0bf6.lean#L1099).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2294071c5b74e40ce19ff829c7c54584134019a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
