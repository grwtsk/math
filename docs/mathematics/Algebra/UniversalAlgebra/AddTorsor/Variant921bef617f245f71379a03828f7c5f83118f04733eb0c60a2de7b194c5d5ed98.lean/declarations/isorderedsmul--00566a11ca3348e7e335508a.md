# IsOrderedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad146ed49792910b1a803b7599177d5f6abd70e871480e6d85cb370143cca3a9",
  "kind": "class",
  "lexical_name": "IsOrderedSMul",
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
  "slug": "isorderedsmul--00566a11ca3348e7e335508a",
  "source": {
    "blob": "cc46b1e28b6f836aa82984f9fecaf93e2e52950a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 74,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00566a11ca3348e7e335508adb817726622279b610d1e8342b0a8ae80827f5d3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad146ed49792910b1a803b7599177d5f6abd70e871480e6d85cb370143cca3a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsOrderedSMul (G P : Type*) [LE G] [LE P] [SMul G P] : Prop where
  protected smul_le_smul_left : ∀ a b : P, a ≤ b → ∀ c : G, c • a ≤ c • b
  protected smul_le_smul_right : ∀ c d : G, c ≤ d → ∀ a : P, c • a ≤ d • a

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc46b1e28b6f836aa82984f9fecaf93e2e52950a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
