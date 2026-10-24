# negative_even_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60beb766-fb17-474b-51a6-63d58b4f1184",
  "kind": "theorem",
  "lexical_name": "negative_even_suffix",
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
  "slug": "negative-even-suffix--1378d9e5d2a61bc70af69330",
  "source": {
    "blob": "cbb50677e757e04c4b623b6cf9cbe50243cb9894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1378d9e5d2a61bc70af69330ae8fb92fd740a4da51d997515c774daa06ea739b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60beb766-fb17-474b-51a6-63d58b4f1184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_even_suffix {v w : V} (h : SignedPath E v w true) :
    ∃ p g, Reach E v p ∧ E p g true ∧ SignedPath E g w false := by
  generalize hq : true = q at h
  induction h with
  | nil v => cases hq
  | @cons u v w p q he ht ih =>
      cases p <;> cases q
      · cases hq
      · obtain ⟨p, g, hp, he', hg⟩ := ih rfl
        exact ⟨p, g, (Reach.single he).trans hp, he', hg⟩
      · exact ⟨u, v, Reach.refl u, he, ht⟩
      · cases hq

/-- Restrict a finite walk when all of its intermediate points lie in a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb50677e757e04c4b623b6cf9cbe50243cb9894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
