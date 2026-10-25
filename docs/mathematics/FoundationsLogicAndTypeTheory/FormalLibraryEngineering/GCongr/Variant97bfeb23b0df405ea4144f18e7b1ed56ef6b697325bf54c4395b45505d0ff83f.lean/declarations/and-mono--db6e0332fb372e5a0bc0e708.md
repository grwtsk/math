# and_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c030e1a7-5353-2642-27f6-fa2db4c99141",
  "kind": "lemma",
  "lexical_name": "and_mono",
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
  "slug": "and-mono--db6e0332fb372e5a0bc0e708",
  "source": {
    "blob": "08257a0d11cf0428bfbb3dd051d2a788a47f9a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db6e0332fb372e5a0bc0e708edbb9a77e423e7c8eecbf401bb5984b99fdaa676",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c030e1a7-5353-2642-27f6-fa2db4c99141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[gcongr] lemma and_mono (h₁ : a → c) (h₂ : a → b → d) : (a ∧ b) → c ∧ d :=
  fun ⟨ha, hb⟩ => ⟨h₁ ha, h₂ ha hb⟩

attribute [gcongr] mt Or.imp forall_imp Exists.imp
  List.Sublist.append List.Sublist.reverse List.drop_sublist_drop_left List.Sublist.drop
  List.Perm.cons List.Perm.append List.Perm.map
  List.cons_subset_cons
  Nat.sub_le_sub_left Nat.sub_le_sub_right Nat.sub_lt_sub_left Nat.sub_lt_sub_right
  Nat.succ_le_succ Nat.div_le_div_right Nat.div_le_div

-- `Nat.pow_le_pow_right` has side condition `0 < n`, which `gcongr` discharges automatically via
-- `positivity`, unlike the `1 ≤ a` side condition of the more general `pow_le_pow_right₀`.
attribute [gcongr high] Nat.pow_le_pow_right


/-! We also use `assumption` to discharge side goals.
In a further downstream file, `positivity` will also be registered as a discharger.
From that point, `positivity` will be tried before `assumption` is: that is perfectly fine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCongr/Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08257a0d11cf0428bfbb3dd051d2a788a47f9a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
