# covariant_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e01763e8a891479be738d5e7a33a9227f8446caa8145ddf77e554d6bda3003",
  "kind": "instance",
  "lexical_name": "covariant_mul",
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
  "slug": "covariant-mul--9efcb67f8d0e4315a45c5a30",
  "source": {
    "blob": "449673628534b0e914cd919cd9dfd65b15756cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 374,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9efcb67f8d0e4315a45c5a3030f20db551db7afc367b9d832d3c99ebb5fe1c93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e01763e8a891479be738d5e7a33a9227f8446caa8145ddf77e554d6bda3003`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance covariant_mul : CovariantClass (Filter α) (Filter α) (· * ·) (· ≤ ·) :=
  ⟨fun _ _ _ => map₂_mono_left⟩
#align filter.covariant_mul Filter.covariant_mul
#align filter.covariant_add Filter.covariant_add

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449673628534b0e914cd919cd9dfd65b15756cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
