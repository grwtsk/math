# HasInfs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d9532c59d1a3a8454586bb3cd43c78831c1ae28a2fabf92efdb77286cd59d43",
  "kind": "class",
  "lexical_name": "HasInfs",
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
  "slug": "hasinfs--6328aefcf4945f7e5f78cd60",
  "source": {
    "blob": "1fb688ec41ed6baa148977a9c32fffedf53d40fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6328aefcf4945f7e5f78cd602debb993d966746f83db37fccb6d3d3e6fc25d1a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d9532c59d1a3a8454586bb3cd43c78831c1ae28a2fabf92efdb77286cd59d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasInfs (α : Type*) where
  infs : α → α → α
#align has_infs HasInfs

-- mathport name: «expr ⊻ »
infixl:74
  " ⊻ " => HasSups.sups
  -- This notation is meant to have higher precedence than `⊔` and `⊓`, but still within the
  -- realm of other binary notation

-- mathport name: «expr ⊼ »
infixl:75 " ⊼ " => HasInfs.infs

namespace Set

section Sups

variable [SemilatticeSup α] (s s₁ s₂ t t₁ t₂ u v : Set α)

/-- `s ⊻ t` is the set of elements of the form `a ⊔ b` where `a ∈ s`, `b ∈ t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Sups/Variant8dbda0fec6ff1161b06c36648fceb5d6164400481573c747cb15b42cc084ff40.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb688ec41ed6baa148977a9c32fffedf53d40fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
