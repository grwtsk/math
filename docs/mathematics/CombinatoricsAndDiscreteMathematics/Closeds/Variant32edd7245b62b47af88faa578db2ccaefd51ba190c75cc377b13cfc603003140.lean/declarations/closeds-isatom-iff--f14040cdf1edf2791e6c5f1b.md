# Closeds.isAtom_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13fa00ce-966a-de47-00f7-c56c7bfbd34b",
  "kind": "theorem",
  "lexical_name": "Closeds.isAtom_iff",
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
  "slug": "closeds-isatom-iff--f14040cdf1edf2791e6c5f1b",
  "source": {
    "blob": "1e9bbb6f5bf08053eea492c14c96ac50fdc396ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f14040cdf1edf2791e6c5f1b3e55836b81a75946f1d7b54c4c64f795b8412aa8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13fa00ce-966a-de47-00f7-c56c7bfbd34b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Closeds.isAtom_iff [T1Space α] {s : Closeds α} :
    IsAtom s ↔ ∃ x, s = Closeds.singleton x := by
  have : IsAtom (s : Set α) ↔ IsAtom s := by
    refine' Closeds.gi.isAtom_iff' rfl (fun t ht => _) s
    obtain ⟨x, rfl⟩ := t.isAtom_iff.mp ht
    exact closure_singleton
  simp only [← this, (s : Set α).isAtom_iff, SetLike.ext'_iff, Closeds.singleton_coe]
#align topological_space.closeds.is_atom_iff TopologicalSpace.Closeds.isAtom_iff

/-- in a `T1Space`, coatoms of `TopologicalSpace.Opens α` are precisely complements of singletons:
`(TopologicalSpace.Closeds.singleton x).compl`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Closeds/Variant32edd7245b62b47af88faa578db2ccaefd51ba190c75cc377b13cfc603003140.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e9bbb6f5bf08053eea492c14c96ac50fdc396ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
