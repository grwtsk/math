# zpowGroupHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48a11b821bdfeebb8141dd1d4337a6628524d223e50b6806b11deee74d42a9f0",
  "kind": "def",
  "lexical_name": "zpowGroupHom",
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
  "slug": "zpowgrouphom--be0f0f658ffe5988e59656ed",
  "source": {
    "blob": "5907760f81953770ab56bc343f8a8dfecfda1cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be0f0f658ffe5988e59656ed10e46cfbb11d5fe0c1ac227ed52bc25c3be1b746",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48a11b821bdfeebb8141dd1d4337a6628524d223e50b6806b11deee74d42a9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zpowGroupHom (n : ℤ) : α →* α where
  toFun := (· ^ n)
  map_one' := one_zpow n
  map_mul' a b := mul_zpow a b n

/-- Inversion on a commutative group, considered as a monoid homomorphism. -/
@[to_additive "Negation on a commutative additive group, considered as an additive monoid
homomorphism."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantaec5e5989b2b7b077bdb7bf445f346d94c2e5a891a0ef054ac416865ed4ffd1b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5907760f81953770ab56bc343f8a8dfecfda1cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
