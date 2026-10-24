# instAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f14218e057e9f1bba4d44766cdb75ebbb8a0025793ffad4a2d6a42fb5fe3237e",
  "kind": "instance",
  "lexical_name": "instAddCommMonoid",
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
  "slug": "instaddcommmonoid--86598a6839a8698e914b718d",
  "source": {
    "blob": "0c8b4f0a1c6b1bb0ab1f99fe2004946cbde535a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 140,
    "path": "GRWTSK/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86598a6839a8698e914b718d0a8ae9489c2c6575f3a562262ee1f121e972a903",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f14218e057e9f1bba4d44766cdb75ebbb8a0025793ffad4a2d6a42fb5fe3237e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommMonoid : AddCommMonoid (SkewMonoidAlgebra k G) where
  __ := toFinsupp_injective.addCommMonoid _ toFinsupp_zero toFinsupp_add
    (fun _ _ ↦ toFinsupp_smul _ _)
  toAdd  := SkewMonoidAlgebra.instAdd
  toZero := SkewMonoidAlgebra.instZero
  nsmul  := (· • ·)

section Support

/-- For `f : SkewMonoidAlgebra k G`, `f.support` is the set of all `a ∈ G` such that
`f a ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5e8539e670638137dc46ebb564d101830402ec54d4ea3131092460ccae42fde6.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8b4f0a1c6b1bb0ab1f99fe2004946cbde535a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
