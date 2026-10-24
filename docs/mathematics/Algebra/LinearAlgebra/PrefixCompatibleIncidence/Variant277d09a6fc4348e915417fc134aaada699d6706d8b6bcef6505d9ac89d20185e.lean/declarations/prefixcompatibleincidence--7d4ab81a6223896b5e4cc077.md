# PrefixCompatibleIncidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0abc7a6512e0198a1a439d8d742777a4d3768a5c60d68e7db8501f03d8b1df9d",
  "kind": "structure",
  "lexical_name": "PrefixCompatibleIncidence",
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
  "slug": "prefixcompatibleincidence--7d4ab81a6223896b5e4cc077",
  "source": {
    "blob": "3361911f71f6533a88436cf649ac0df608ba3cc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d4ab81a6223896b5e4cc077eb982cbbc04e5e0463a42736a7a9d83ad65f5759",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0abc7a6512e0198a1a439d8d742777a4d3768a5c60d68e7db8501f03d8b1df9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrefixCompatibleIncidence
    (RightSpace LeftSpace : Type*)
    [NormedAddCommGroup RightSpace] [NormedSpace ℂ RightSpace]
    [NormedAddCommGroup LeftSpace] [NormedSpace ℂ LeftSpace] where
  incidence : ℕ → RightSpace →L[ℂ] LeftSpace
  increment : ℕ → RightSpace →L[ℂ] LeftSpace
  zero : incidence 0 = 0
  succ : ∀ x,
    incidence (x + 1) = incidence x + increment (x + 1)

/-- The incidence increment is literally the successor difference. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variant277d09a6fc4348e915417fc134aaada699d6706d8b6bcef6505d9ac89d20185e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3361911f71f6533a88436cf649ac0df608ba3cc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
