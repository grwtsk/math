# accessibleNext_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d5e2817-e98f-089c-d608-1523b1afaf35",
  "kind": "theorem",
  "lexical_name": "accessibleNext_correct",
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
  "slug": "accessiblenext-correct--711cd6f58f53e7a199d5fa86",
  "source": {
    "blob": "6770ea1e7b5347ba445e9787f6cc768c845d9fe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:711cd6f58f53e7a199d5fa865c6fe9d48719493ce05c1afb9f73a9794cc0272a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5e2817-e98f-089c-d608-1523b1afaf35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accessibleNext_correct (source target : AccessibleState S) :
    target ∈ accessibleNext source ↔ step source target := by
  constructor
  · intro member
    obtain ⟨successor, _, equality⟩ := List.mem_map.mp member
    have equation := congrArg Subtype.val equality
    change Beta source.val target.val
    change successor.val = target.val at equation
    rw [← equation]
    exact next_sound successor.property
  · intro reduction
    have member := next_complete reduction
    apply List.mem_map.mpr
    exact ⟨⟨target.val, member⟩, by simp, Subtype.ext rfl⟩

/-- Reversed accessibility on the subtype is inherited from the complete raw relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNext/Variantfa78ff7a369fb4e4f84a2fb8bf5a12451a5eb42f2bac4ea1cd3d8830f24241ea.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6770ea1e7b5347ba445e9787f6cc768c845d9fe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
