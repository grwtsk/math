# der_of_decstr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b135d1f-ea8d-75fb-3c0a-191f2ddcd1c1",
  "kind": "theorem",
  "lexical_name": "der_of_decstr",
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
  "slug": "der-of-decstr--d1b2db67168e59abab0ad2d2",
  "source": {
    "blob": "c0c7b77bb2f35c5ad3cebc82646a5bc41320d520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 340,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b2db67168e59abab0ad2d29ef6807827e39f485f8fa6d9488ef78dd20f2924",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b135d1f-ea8d-75fb-3c0a-191f2ddcd1c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem der_of_decstr {en : Miustr} (h : Decstr en) : Derivable en := by
  /- The next three lines have the effect of introducing `count U en` as a variable that can be used
  for induction -/
  have hu : ∃ n, count U en = n := exists_eq'
  obtain ⟨n, hu⟩ := hu
  induction n generalizing en with
  | zero => exact base_case_suf _ h hu
  | succ k hk =>
    rcases ind_hyp_suf k en hu h with ⟨as, bs, hyab, habuc, hdecab⟩
    have h₂ : Derivable (↑(M :: as) ++ ↑[I, I, I] ++ bs) := hk hdecab habuc
    rw [hyab]
    exact Derivable.r3 h₂

/-!
### Decidability of `Derivable`
-/


/-- Finally, we have the main result, namely that `Derivable` is a decidable predicate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant9ce55bbd7fcc5a858ec47db37b8fbe3e3f042d562f08b29141da5b1c37efc1df.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c7b77bb2f35c5ad3cebc82646a5bc41320d520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
