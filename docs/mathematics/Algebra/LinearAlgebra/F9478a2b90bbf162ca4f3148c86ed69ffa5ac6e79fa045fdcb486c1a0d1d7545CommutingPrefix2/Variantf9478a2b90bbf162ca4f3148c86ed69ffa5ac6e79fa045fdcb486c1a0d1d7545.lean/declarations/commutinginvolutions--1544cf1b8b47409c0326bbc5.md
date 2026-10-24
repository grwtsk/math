# CommutingInvolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba54bb566caad21f1e6d817ea0e1ca78aa548cdda077730be8a1de5106db8481",
  "kind": "structure",
  "lexical_name": "CommutingInvolutions",
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
  "slug": "commutinginvolutions--1544cf1b8b47409c0326bbc5",
  "source": {
    "blob": "04f9c61a4da786c399de4b051d93b477a1dcee8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1544cf1b8b47409c0326bbc506137c6cfabdd0a0db20ae1296556da7125712fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba54bb566caad21f1e6d817ea0e1ca78aa548cdda077730be8a1de5106db8481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommutingInvolutions (V : Type u) [AddCommGroup V] [Module ℝ V] where
  first : V →ₗ[ℝ] V
  second : V →ₗ[ℝ] V
  first_sq : ∀ x, first (first x) = x
  second_sq : ∀ x, second (second x) = x
  commute : ∀ x, first (second x) = second (first x)

namespace CommutingInvolutions

variable (C : CommutingInvolutions V)

/-- The first + projector commutes with the second + projector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variantf9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f9c61a4da786c399de4b051d93b477a1dcee8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
