# enumOrd_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75d04783-51be-fe50-7791-e5a6b1cf8d8d",
  "kind": "theorem",
  "lexical_name": "enumOrd_surjective",
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
  "slug": "enumord-surjective--6a90a1eb49fc475cc3874b4f",
  "source": {
    "blob": "c645c924592c1d359f7ffee102a85dda474aacf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2284,
    "line": 2266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a90a1eb49fc475cc3874b4f175b7610510eae25bc3e620bb594b640b77f2dec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d04783-51be-fe50-7791-e5a6b1cf8d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2266–2284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enumOrd_surjective (hS : Unbounded (· < ·) S) : ∀ s ∈ S, ∃ a, enumOrd S a = s := fun s hs =>
  ⟨sSup { a | enumOrd S a ≤ s }, by
    apply le_antisymm
    · rw [enumOrd_def]
      refine' csInf_le' ⟨hs, fun a ha => _⟩
      have : enumOrd S 0 ≤ s := by
        rw [enumOrd_zero]
        exact csInf_le' hs
      -- Porting note: `flip` is required to infer a metavariable.
      rcases flip exists_lt_of_lt_csSup ha ⟨0, this⟩ with ⟨b, hb, hab⟩
      exact (enumOrd_strictMono hS hab).trans_le hb
    · by_contra' h
      exact
        (le_csSup ⟨s, fun a => (lt_wf.self_le_of_strictMono (enumOrd_strictMono hS) a).trans⟩
              (enumOrd_succ_le hS hs h)).not_lt
          (lt_succ _)⟩
#align ordinal.enum_ord_surjective Ordinal.enumOrd_surjective

/-- An order isomorphism between an unbounded set of ordinals and the ordinals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean#L2266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c645c924592c1d359f7ffee102a85dda474aacf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
