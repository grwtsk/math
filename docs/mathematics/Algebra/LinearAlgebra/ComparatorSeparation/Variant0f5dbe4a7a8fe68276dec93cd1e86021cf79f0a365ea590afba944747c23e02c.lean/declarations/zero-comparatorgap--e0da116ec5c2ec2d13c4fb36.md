# zero_comparatorGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f6cc1e6-6aba-b2c1-2271-8b285879eb72",
  "kind": "theorem",
  "lexical_name": "zero_comparatorGap",
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
  "slug": "zero-comparatorgap--e0da116ec5c2ec2d13c4fb36",
  "source": {
    "blob": "d2c432a10a2d59d6176648ac2b768fe0be896498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0da116ec5c2ec2d13c4fb364e85cf75a90e46de19836bcda721bc8360d0d0ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6cc1e6-6aba-b2c1-2271-8b285879eb72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_comparatorGap
    (I : LinearIntervention X V) (x : X) :
    (zero : LinearComparator V).comparatorGap I x = 0 := by
  simp [comparatorGap]

end LinearComparator

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- Phase-IV sensitivity Λ is the Phase-III intervention-defect energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c432a10a2d59d6176648ac2b768fe0be896498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
