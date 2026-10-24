# MulDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bf3de376c134e593a8919315ef51ea222d50bb1dd4971da036fa1985ca72022",
  "kind": "class",
  "lexical_name": "MulDistribMulAction",
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
  "slug": "muldistribmulaction--2316d6b7d43d88de8cf0949f",
  "source": {
    "blob": "7b0a3e2cb77287558f463c9d186c63d2b6e1d837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 629,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2316d6b7d43d88de8cf0949fdde2ba8d1900ccbf1c7c9bccf0b9fd5e24cce5b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bf3de376c134e593a8919315ef51ea222d50bb1dd4971da036fa1985ca72022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MulDistribMulAction (M N : Type*) [Monoid M] [Monoid N] extends MulAction M N where
  /-- Multiplying `1` by a scalar gives `1` -/
  smul_one : ∀ r : M, r • (1 : N) = 1
  /-- Distributivity of `•` across `*` -/
  smul_mul : ∀ (r : M) (x y : N), r • (x * y) = r • x * r • y

/-- Typeclass for additive actions on additive structures.

The key axiom here is `vadd_add : g +ᵥ (x + y) = (g +ᵥ x) + (g +ᵥ y)`.
If `G` is an additive group with additive automorphism group `Γ`, then there is a natural instance
of `AddDistribAddAction Γ G`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0a3e2cb77287558f463c9d186c63d2b6e1d837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
