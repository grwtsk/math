# isTotallyDisconnected_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2a2357610d3e41214dbfdfa64df2819c4d287c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 618,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9545e864-db36-98ca-ef28-76c869c52789",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47123d67-0238-8add-e1f0-e09e0fce8300",
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
  "slug": "istotallydisconnected-iff--bb43c94a9ee93b67bf713ffb",
  "source": {
    "blob": "f2a2357610d3e41214dbfdfa64df2819c4d287c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 618,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb43c94a9ee93b67bf713ffbb4613d75e2d2a6f81763cf723abe61d43a78626d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47123d67-0238-8add-e1f0-e09e0fce8300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTotallyDisconnected_iff :
    S.IsTotallyDisconnected ↔ ∀ c d, (S.arrows c d).Nonempty → c = d := by
  constructor
  · rintro h c d ⟨f, fS⟩
    have := h ⟨c, mem_objs_of_src S fS⟩ ⟨d, mem_objs_of_tgt S fS⟩ ⟨f, fS⟩
    exact congr_arg Subtype.val this
  · rintro h ⟨c, hc⟩ ⟨d, hd⟩ ⟨f, fS⟩
    simp only [Subtype.mk_eq_mk]
    exact h c d ⟨f, fS⟩
#align category_theory.subgroupoid.is_totally_disconnected_iff CategoryTheory.Subgroupoid.isTotallyDisconnected_iff

/-- The isotropy subgroupoid of `S` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant6bbacce601419d30d18e52b0e470bc0d84ca76b3473b8b6b9768a815c446bdc1.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2a2357610d3e41214dbfdfa64df2819c4d287c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
