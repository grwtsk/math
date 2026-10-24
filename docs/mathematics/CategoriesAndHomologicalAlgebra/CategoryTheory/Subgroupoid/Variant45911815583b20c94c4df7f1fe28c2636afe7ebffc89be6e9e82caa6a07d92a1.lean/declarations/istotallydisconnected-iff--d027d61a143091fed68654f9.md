# isTotallyDisconnected_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85659c69-f344-c893-09ba-c77abb9d82b4",
  "kind": "theorem",
  "lexical_name": "isTotallyDisconnected_iff",
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
  "slug": "istotallydisconnected-iff--d027d61a143091fed68654f9",
  "source": {
    "blob": "851637fe159549354e651b141f8d72e0c8a54d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 555,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant45911815583b20c94c4df7f1fe28c2636afe7ebffc89be6e9e82caa6a07d92a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d027d61a143091fed68654f93743996ab5cb50669ea56447433bf8c650c8b5b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant45911815583b20c94c4df7f1fe28c2636afe7ebffc89be6e9e82caa6a07d92a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85659c69-f344-c893-09ba-c77abb9d82b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTotallyDisconnected_iff :
    S.IsTotallyDisconnected ↔ ∀ c d, (S.arrows c d).Nonempty → c = d := by
  constructor
  · rintro h c d ⟨f, fS⟩
    exact congr_arg Subtype.val <| h ⟨c, mem_objs_of_src S fS⟩ ⟨d, mem_objs_of_tgt S fS⟩ ⟨f, fS⟩
  · rintro h ⟨c, hc⟩ ⟨d, hd⟩ ⟨f, fS⟩
    simp only [Subtype.mk_eq_mk]
    exact h c d ⟨f, fS⟩

/-- The isotropy subgroupoid of `S` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant45911815583b20c94c4df7f1fe28c2636afe7ebffc89be6e9e82caa6a07d92a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant45911815583b20c94c4df7f1fe28c2636afe7ebffc89be6e9e82caa6a07d92a1.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851637fe159549354e651b141f8d72e0c8a54d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
