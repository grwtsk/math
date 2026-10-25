# der_of_decstr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3f26cbf-80ff-7eac-8f57-226500309004",
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
  "slug": "der-of-decstr--6b2f2c06bbe9afb53a641a56",
  "source": {
    "blob": "3e20c6b7c3f9326d1ba00fe3472ea384bb45213c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 350,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b2f2c06bbe9afb53a641a56bb53404a1200f3e46dd62ecc57e42e19d88d7494",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f26cbf-80ff-7eac-8f57-226500309004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem der_of_decstr {en : Miustr} (h : Decstr en) : Derivable en := by
  /- The next three lines have the effect of introducing `count U en` as a variable that can be used
   for induction -/
  have hu : ∃ n, count U en = n := exists_eq'
  cases' hu with n hu
  revert en -- Crucially, we need the induction hypothesis to quantify over `en`
  induction' n with k hk
  · exact base_case_suf _
  · intro ys hdec hus
    rcases ind_hyp_suf k ys hus hdec with ⟨as, bs, hyab, habuc, hdecab⟩
    have h₂ : Derivable (↑(M :: as) ++ ↑[I, I, I] ++ bs) := hk hdecab habuc
    rw [hyab]
    exact Derivable.r3 h₂
#align miu.der_of_decstr Miu.der_of_decstr

/-!
### Decidability of `Derivable`
-/


/-- Finally, we have the main result, namely that `Derivable` is a decidable predicate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e20c6b7c3f9326d1ba00fe3472ea384bb45213c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
