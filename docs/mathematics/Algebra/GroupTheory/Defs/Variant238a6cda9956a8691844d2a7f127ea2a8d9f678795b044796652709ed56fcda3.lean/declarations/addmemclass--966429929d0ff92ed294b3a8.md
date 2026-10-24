# AddMemClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39c6f2baaff6219e21bdd797803be8e9524e0160aac517a60109e06a9bafceda",
  "kind": "class",
  "lexical_name": "AddMemClass",
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
  "slug": "addmemclass--966429929d0ff92ed294b3a8",
  "source": {
    "blob": "afda6bcffb2250e5bf67ee9bd6141033789f4178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:966429929d0ff92ed294b3a811cb173add2101f7c4b83a5adf835f636aac8356",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39c6f2baaff6219e21bdd797803be8e9524e0160aac517a60109e06a9bafceda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddMemClass (S : Type*) (M : outParam Type*) [Add M] [SetLike S M] : Prop where
  /-- A substructure satisfying `AddMemClass` is closed under addition. -/
  add_mem : ∀ {s : S} {a b : M}, a ∈ s → b ∈ s → a + b ∈ s

export AddMemClass (add_mem)

attribute [to_additive] MulMemClass

attribute [aesop 90% (rule_sets := [SetLike])] mul_mem add_mem

/-- A subsemigroup of a magma `M` is a subset closed under multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant238a6cda9956a8691844d2a7f127ea2a8d9f678795b044796652709ed56fcda3.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afda6bcffb2250e5bf67ee9bd6141033789f4178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
