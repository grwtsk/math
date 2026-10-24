# evalAddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2fe2dba1f6ff48fa7ba9947340d7802f79278865457fd6be56d3bfbb289adf8",
  "kind": "def",
  "lexical_name": "evalAddMonoidHom",
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
  "slug": "evaladdmonoidhom--d4df7aa8ba4635eb90c650b0",
  "source": {
    "blob": "be636fd42fa83c1568648f3153d1fa7fa81d8010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 879,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4df7aa8ba4635eb90c650b0b0c460c0d2ad0c48d6adf8e8779fb4cd14762b98",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2fe2dba1f6ff48fa7ba9947340d7802f79278865457fd6be56d3bfbb289adf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalAddMonoidHom (a : M) : (M →ₛₗ[σ₁₂] M₂) →+ M₂ where
  toFun f := f a
  map_add' f g := LinearMap.add_apply f g a
  map_zero' := rfl

/-- `LinearMap.toAddMonoidHom` promoted to an `AddMonoidHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant42f5f7c4911cab9fa08eca7188e2206c98a139b97906c51fd0d43bf0b6b5394a.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be636fd42fa83c1568648f3153d1fa7fa81d8010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
