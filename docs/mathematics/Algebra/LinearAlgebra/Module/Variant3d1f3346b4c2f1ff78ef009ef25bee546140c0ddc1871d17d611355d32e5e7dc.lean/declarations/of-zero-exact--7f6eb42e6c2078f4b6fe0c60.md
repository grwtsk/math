# of.zero_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62b56617-67b4-86b9-e31d-2f702ca807b0",
  "kind": "theorem",
  "lexical_name": "of.zero_exact",
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
  "slug": "of-zero-exact--7f6eb42e6c2078f4b6fe0c60",
  "source": {
    "blob": "fdac715a432bd82d752257e5aa5fef932aa69658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 278,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3d1f3346b4c2f1ff78ef009ef25bee546140c0ddc1871d17d611355d32e5e7dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6eb42e6c2078f4b6fe0c60ee3203bdaa0b23632add3301b160f714ab6cb73e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant3d1f3346b4c2f1ff78ef009ef25bee546140c0ddc1871d17d611355d32e5e7dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62b56617-67b4-86b9-e31d-2f702ca807b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of.zero_exact {i x} (H : of R ι G f i x = 0) :
    ∃ j hij, f i j hij x = (0 : G j) := by
  convert! exists_eq_of_of_eq (H.trans (map_zero <| _).symm)
  rw [map_zero]

end DirectLimit

end Module

namespace AddCommGroup

variable (G) [∀ i, AddCommMonoid (G i)]

/-- The direct limit of a directed system is the abelian groups glued together along the maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant3d1f3346b4c2f1ff78ef009ef25bee546140c0ddc1871d17d611355d32e5e7dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant3d1f3346b4c2f1ff78ef009ef25bee546140c0ddc1871d17d611355d32e5e7dc.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdac715a432bd82d752257e5aa5fef932aa69658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
