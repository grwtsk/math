# recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f97f6e64-cf31-1775-8a8b-b879b342c4ee",
  "kind": "theorem",
  "lexical_name": "recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ",
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
  "slug": "recursivecumulantfamily-eq-of-momentsagreebelow-succ--fc74b1a46b7a39942e66a600",
  "source": {
    "blob": "941fc480b26df1bb458d045be67c5e059c5d70df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 303,
    "path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc74b1a46b7a39942e66a6009145ec0ae54dd11ea0a2a7fb91775e3e1ef2b6fb",
  "verification": {
    "reference": "docs/verification/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97f6e64-cf31-1775-8a8b-b879b342c4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ
    (n : ℕ)
    {M₁ M₂ : DirectionMomentFamily E R}
    (hM : MomentsAgreeBelow (n + 1) M₁ M₂)
    (directions : Fin n → E) :
    recursiveCumulantFamily M₁ n directions =
      recursiveCumulantFamily M₂ n directions := by
  exact
    recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow
      (n + 1) hM n (Nat.lt_succ_self n) directions

end MomentCumulant

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `941fc480b26df1bb458d045be67c5e059c5d70df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
