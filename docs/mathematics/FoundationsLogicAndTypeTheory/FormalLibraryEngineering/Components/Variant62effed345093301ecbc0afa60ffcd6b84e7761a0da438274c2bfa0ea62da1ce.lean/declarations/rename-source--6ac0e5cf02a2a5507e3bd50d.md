# rename_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f2f933-cc4a-27fc-d12d-ebf8199c9fa5",
  "kind": "theorem",
  "lexical_name": "rename_source",
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
  "slug": "rename-source--6ac0e5cf02a2a5507e3bd50d",
  "source": {
    "blob": "1b8ffcebf58c28e1875ce86f1d958785aca4d1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 335,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac0e5cf02a2a5507e3bd50dac1309f726e8aa52466d8ff225ad1313fd0ea97a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f2f933-cc4a-27fc-d12d-ebf8199c9fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_source {M N : Expr S} {ρ : Nat → Nat} (h : Beta (M.rename ρ) N) :
    ∃ M', Beta M M' ∧ N = M'.rename ρ := by
  induction M generalizing ρ N with
  | var n => cases h
  | sort s => cases h
  | pi A B ihA ihB =>
    cases h with
    | pi_domain hh =>
      obtain ⟨A',ha,rfl⟩ := ihA hh
      exact ⟨_,.pi_domain ha,rfl⟩
    | pi_body hh =>
      obtain ⟨B',hb,rfl⟩ := ihB hh
      exact ⟨_,.pi_body hb,rfl⟩
  | lam A b ihA ihb =>
    cases h with
    | lam_domain hh =>
      obtain ⟨A',ha,rfl⟩ := ihA hh
      exact ⟨_,.lam_domain ha,rfl⟩
    | lam_body hh =>
      obtain ⟨b',hb,rfl⟩ := ihb hh
      exact ⟨_,.lam_body hb,rfl⟩
  | app f a ihf iha =>
    cases f <;> cases h
    all_goals first
      | (rename_i hh
         obtain ⟨f',hf,rfl⟩ := ihf hh
         exact ⟨_,.app_left hf,rfl⟩)
      | (rename_i hh
         obtain ⟨a',ha,rfl⟩ := iha hh
         exact ⟨_,.app_right ha,rfl⟩)
      | exact ⟨_,.head _ _ _,Expr.instantiate_rename _ _ _⟩
end Beta
namespace StronglyNormalizing
variable {S : Type u} {M : Expr S}
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b8ffcebf58c28e1875ce86f1d958785aca4d1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
