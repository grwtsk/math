# limit_π_isIso_of_is_strict_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a6ba61d1b35c40e27ae69bb74e2d659ca0aebeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c04af3c5-cf73-a4ab-05c1-1a02efc70fc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9acdf4be-04ba-0bd2-308a-7341691b9346",
  "kind": "theorem",
  "lexical_name": "limit_π_isIso_of_is_strict_terminal",
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
  "slug": "limit-isiso-of-is-strict-terminal--1a18515587ccf3b7bcb77e36",
  "source": {
    "blob": "7a6ba61d1b35c40e27ae69bb74e2d659ca0aebeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a18515587ccf3b7bcb77e36c79cbf58bb1b01183ac10714443176c24211ca31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9acdf4be-04ba-0bd2-308a-7341691b9346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limit_π_isIso_of_is_strict_terminal (F : J ⥤ C) [HasLimit F] (i : J)
    (H : ∀ (j) (_ : j ≠ i), IsTerminal (F.obj j)) [Subsingleton (i ⟶ i)] : IsIso (limit.π F i) := by
  classical
    refine ⟨⟨limit.lift _ ⟨_, ⟨?_, ?_⟩⟩, ?_, ?_⟩⟩
    · exact fun j =>
        dite (j = i)
          (fun h => eqToHom (by cases h; rfl))
          fun h => (H _ h).from _
    · intro j k f
      split_ifs with h h_1 h_1
      · cases h
        cases h_1
        obtain rfl : f = 𝟙 _ := Subsingleton.elim _ _
        simp
      · cases h
        erw [Category.comp_id]
        haveI : IsIso (F.map f) := (H _ h_1).isIso_from _
        rw [← IsIso.comp_inv_eq]
        apply (H _ h_1).hom_ext
      · cases h_1
        apply (H _ h).hom_ext
      · apply (H _ h).hom_ext
    · ext
      rw [assoc, limit.lift_π]
      dsimp only
      split_ifs with h
      · cases h
        rw [id_comp, eqToHom_refl]
        exact comp_id _
      · apply (H _ h).hom_ext
    · rw [limit.lift_π]
      simp

variable [HasTerminal C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictInitial/Variant03bd68f40143b99af8418f06d1e230caa53fda52387f4049a9288d1caf687f9f.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a6ba61d1b35c40e27ae69bb74e2d659ca0aebeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
