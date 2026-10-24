# map_subtype_val_restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef932a9e-510b-cbec-c4ba-87a38e74b476",
  "kind": "theorem",
  "lexical_name": "map_subtype_val_restriction",
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
  "slug": "map-subtype-val-restriction--4f3c3d8c337a443e93fec766",
  "source": {
    "blob": "77adf951a4485b6d44b1f81457c91cb4dc04d0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 283,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f3c3d8c337a443e93fec76619245412a330e09ec6d964f6195cf23924c418b5",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef932a9e-510b-cbec-c4ba-87a38e74b476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subtype_val_restriction {x} (s : Set α) [DecidablePred (· ∈ s)]
    (hxs : IsSupported x s) : map (↑) (restriction s x) = x := by
  refine Subring.InClosure.recOn hxs ?_ ?_ ?_ ?_
  · rw [RingHom.map_one]
    rfl
  · rw [map_neg, map_one]
    rfl
  · rintro _ ⟨p, hps, rfl⟩ n ih
    rw [RingHom.map_mul, restriction_of, dif_pos hps, RingHom.map_mul, map_of, ih]
  · intro x y ihx ihy
    rw [RingHom.map_add, RingHom.map_add, ihx, ihy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variant7201b161e895abc75d3c6988324e12281119c58d59d58bebdb2165187d23a47f.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77adf951a4485b6d44b1f81457c91cb4dc04d0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
