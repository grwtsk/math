# isLimitCompPullbackCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dfe431f9ac7d06297dec4e1cedd77c95d531c8f555de0b3bccfc8599d9979f7",
  "kind": "def",
  "lexical_name": "isLimitCompPullbackCone",
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
  "slug": "islimitcomppullbackcone--b6d8c9b341c75d66c9ff024f",
  "source": {
    "blob": "9f5379e48beafb2e81c4e9fe42c3e58d4af3edb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 268,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04a50817960e136ecbc0df24794139c01447b2445c87591dc60b406c64f7f42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d8c9b341c75d66c9ff024f959fc3fe7f419713d3f23417db96c31d339231c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04a50817960e136ecbc0df24794139c01447b2445c87591dc60b406c64f7f42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dfe431f9ac7d06297dec4e1cedd77c95d531c8f555de0b3bccfc8599d9979f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[no_expose] noncomputable def isLimitCompPullbackCone :
    Limits.IsLimit (compPullbackCone S₁ S₂) :=
  Limits.PullbackCone.IsLimit.mk (comp_comm S₁ S₂)
    (fun x ↦ Limits.pullback.lift x.fst x.snd x.condition)
    (fun x ↦ by simp [πₗ])
    (fun x ↦ by simp [πᵣ])
    (fun f g h k ↦ by apply Limits.pullback.hom_ext <;> cat_disch)

variable {S₁ S₂}

@[ext high, grind ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04a50817960e136ecbc0df24794139c01447b2445c87591dc60b406c64f7f42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant04a50817960e136ecbc0df24794139c01447b2445c87591dc60b406c64f7f42e.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5379e48beafb2e81c4e9fe42c3e58d4af3edb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
