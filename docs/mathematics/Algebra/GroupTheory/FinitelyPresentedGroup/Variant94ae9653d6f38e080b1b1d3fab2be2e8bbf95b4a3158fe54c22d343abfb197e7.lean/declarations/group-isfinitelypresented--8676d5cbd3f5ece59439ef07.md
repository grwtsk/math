# Group.IsFinitelyPresented

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:413bfe7034cfa5d19f4e07f14b9970ce729c0c76cef8baa9b96987a62b30a072",
  "kind": "class",
  "lexical_name": "Group.IsFinitelyPresented",
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
  "slug": "group-isfinitelypresented--8676d5cbd3f5ece59439ef07",
  "source": {
    "blob": "4027505e0e4a0f141cf01f957b97c41ca335e8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8676d5cbd3f5ece59439ef077f0eba6c992490808d522173f44eaf583b8a72d3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:413bfe7034cfa5d19f4e07f14b9970ce729c0c76cef8baa9b96987a62b30a072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Group.IsFinitelyPresented (G : Type*) [Group G] : Prop where
  out : ∃ (n : ℕ) (φ : FreeGroup (Fin n) →* G),
  Function.Surjective φ ∧ φ.ker.IsFinitelyNormallyGenerated

namespace Group.IsFinitelyPresented

/-- Finitely presented groups are closed under isomorphism. -/
@[to_additive /-- Finitely presented additive groups are closed under additive isomorphism. -/
]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FinitelyPresentedGroup/Variant94ae9653d6f38e080b1b1d3fab2be2e8bbf95b4a3158fe54c22d343abfb197e7.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4027505e0e4a0f141cf01f957b97c41ca335e8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
