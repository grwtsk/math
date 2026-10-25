# formPerm_disjoint_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50743607-5d38-d5d4-1f92-e80da394a66d",
  "kind": "theorem",
  "lexical_name": "formPerm_disjoint_iff",
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
  "slug": "formperm-disjoint-iff--529c4bc17d4ca7e9ac97aad8",
  "source": {
    "blob": "35d90b4452c24e09046210ea07c8be00150d8ad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:529c4bc17d4ca7e9ac97aad8efb3b4f719f6a8e1239484860444b9961bb60af4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50743607-5d38-d5d4-1f92-e80da394a66d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_disjoint_iff (hl : Nodup l) (hl' : Nodup l') (hn : 2 ≤ l.length)
    (hn' : 2 ≤ l'.length) : Perm.Disjoint (formPerm l) (formPerm l') ↔ l.Disjoint l' := by
  rw [disjoint_iff_eq_or_eq, List.Disjoint]
  constructor
  · rintro h x hx hx'
    specialize h x
    rw [formPerm_apply_mem_eq_self_iff _ hl _ hx, formPerm_apply_mem_eq_self_iff _ hl' _ hx'] at h
    rcases h with (hl | hl') <;> linarith
  · intro h x
    by_cases hx : x ∈ l
    by_cases hx' : x ∈ l'
    · exact (h hx hx').elim
    all_goals have := formPerm_eq_self_of_not_mem _ _ ‹_›; tauto
#align list.form_perm_disjoint_iff List.formPerm_disjoint_iff

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant5b36951dfd6e9be48d2a3a42280d4067bbc418e5acf44f2cfcd1a4a46963218a.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35d90b4452c24e09046210ea07c8be00150d8ad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
