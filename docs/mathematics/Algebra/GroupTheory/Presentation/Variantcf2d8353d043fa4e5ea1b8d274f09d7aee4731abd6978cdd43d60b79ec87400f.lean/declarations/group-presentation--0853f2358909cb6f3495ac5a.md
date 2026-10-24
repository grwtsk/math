# Group.Presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cd80f680a33ecebfe226fb403015c5c231e3693d21595b8d525e34b773b21dd",
  "kind": "structure",
  "lexical_name": "Group.Presentation",
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
  "slug": "group-presentation--0853f2358909cb6f3495ac5a",
  "source": {
    "blob": "4c466bd63950d6c287caee57204e1bb324e8cea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0853f2358909cb6f3495ac5a7d934909824fd211a432d42f60727c96b97a88ce",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cd80f680a33ecebfe226fb403015c5c231e3693d21595b8d525e34b773b21dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Group.Presentation (G ι : Type*) [Group G] extends Group.Generators G ι where
  /-- The set of relators, as words in the free group; each `r ∈ rel` is read as `r = 1` in `G`. -/
  rel : Set (FreeGroup ι)
  /-- The kernel of the canonical surjection is equal to the normal closure of the relators. -/
  lift_ker_eq_normalClosure : toGenerators.lift.ker = Subgroup.normalClosure rel

namespace Group.Presentation

variable (P : Group.Presentation G ι)

/-- The presentation given by a surjective homomorphism `φ : FreeGroup ι →* G`,
together with a set of relators whose normal closure is the kernel of `φ`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Presentation/Variantcf2d8353d043fa4e5ea1b8d274f09d7aee4731abd6978cdd43d60b79ec87400f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c466bd63950d6c287caee57204e1bb324e8cea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
