# StarOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a97e7e2e32b710e683610286e85bc452b62faf7a79c96112c16c0950f443d28a",
  "kind": "class",
  "lexical_name": "StarOrderedRing",
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
  "slug": "starorderedring--cb13643feddaac5778fc3e9e",
  "source": {
    "blob": "a34cb52e255ad10e3485ee150c66815b4e32673e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb13643feddaac5778fc3e9e246cbca7c2051fc5ac4cba7b340f6b35f016ce29",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a97e7e2e32b710e683610286e85bc452b62faf7a79c96112c16c0950f443d28a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class StarOrderedRing (R : Type u) [NonUnitalSemiring R] [PartialOrder R] extends StarRing R where
  /-- characterization of the order in terms of the `StarRing` structure. -/
  le_iff :
    ∀ x y : R, x ≤ y ↔ ∃ p, p ∈ AddSubmonoid.closure (Set.range fun s => star s * s) ∧ y = x + p
#align star_ordered_ring StarOrderedRing

namespace StarOrderedRing

-- see note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant1dd4001ab958199fff1defc28bf171a1a18d9201d852b0928c24826ceb73f503.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a34cb52e255ad10e3485ee150c66815b4e32673e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
