# exists_eq_singleton_iff_nonempty_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:185bd591-5acf-0bef-6cc7-c11106b2de32",
  "kind": "theorem",
  "lexical_name": "exists_eq_singleton_iff_nonempty_subsingleton",
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
  "slug": "exists-eq-singleton-iff-nonempty-subsingleton--3c8e8cdf6644ea28babd8697",
  "source": {
    "blob": "3791d4ac08face2cfbaf545c00d66b5e0bd896db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2439,
    "line": 2430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7d22925244c5eaffe986302f9c3839ca75a900b225cf9f326468cbb1cbbfd2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c8e8cdf6644ea28babd8697987b76099079e77d026cf13cd35e474f8bd153d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7d22925244c5eaffe986302f9c3839ca75a900b225cf9f326468cbb1cbbfd2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:185bd591-5acf-0bef-6cc7-c11106b2de32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2430–2439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_singleton_iff_nonempty_subsingleton :
    (∃ a : α, s = {a}) ↔ s.Nonempty ∧ s.Subsingleton := by
  refine' ⟨_, fun h => _⟩
  · rintro ⟨a, rfl⟩
    exact ⟨singleton_nonempty a, subsingleton_singleton⟩
  · exact h.2.eq_empty_or_singleton.resolve_left h.1.ne_empty
#align set.exists_eq_singleton_iff_nonempty_subsingleton Set.exists_eq_singleton_iff_nonempty_subsingleton

/-- `s`, coerced to a type, is a subsingleton type if and only if `s` is a subsingleton set. -/
@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7d22925244c5eaffe986302f9c3839ca75a900b225cf9f326468cbb1cbbfd2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7d22925244c5eaffe986302f9c3839ca75a900b225cf9f326468cbb1cbbfd2e6.lean#L2430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3791d4ac08face2cfbaf545c00d66b5e0bd896db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
