# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:026230eba6b0e70a6f2975c4a014b7a2661741b78a2b2d756b3edc5bb52821b7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c9166d4afc6cc49f7d02ccee",
  "source": {
    "blob": "5d49da3c71c6949348451c5572f586b489bed6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant20529bf639e1639664212c568db0e75277d8cde06db91f6ef95789414eea2f93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9166d4afc6cc49f7d02cceea276cc37e90161ab922bf603e20ec93ee29c3c82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant20529bf639e1639664212c568db0e75277d8cde06db91f6ef95789414eea2f93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:026230eba6b0e70a6f2975c4a014b7a2661741b78a2b2d756b3edc5bb52821b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b : ℕ) (h : a + b = a) : b = 0 := by
  induction' a with d hd
  · -- Test the generalized vars have been removed
    revert h
    fail_if_success (guard_hyp a : Nat)
    fail_if_success (guard_hyp h : a + b = a)
    intro h
    -- Sample proof
    rw [Nat.zero_add] at h
    assumption
  · -- Test the generalized vars have been removed
    revert h
    fail_if_success (guard_hyp a : Nat)
    fail_if_success (guard_hyp h : a + b = a)
    intro h
    -- Sample proof
    rw [Nat.succ_add, Nat.succ.injEq] at h
    apply hd
    assumption

/-- error: unnecessary 'generalizing' argument, variable 'a' is generalized automatically -/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant20529bf639e1639664212c568db0e75277d8cde06db91f6ef95789414eea2f93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant20529bf639e1639664212c568db0e75277d8cde06db91f6ef95789414eea2f93.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d49da3c71c6949348451c5572f586b489bed6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
