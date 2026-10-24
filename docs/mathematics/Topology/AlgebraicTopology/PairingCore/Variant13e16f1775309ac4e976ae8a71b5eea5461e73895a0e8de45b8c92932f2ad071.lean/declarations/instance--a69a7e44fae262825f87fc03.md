# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d45712bf4715ef130a5c1ef6a0e8a488ce0eba5b1dcad9921e51a4acfd3bc84",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a69a7e44fae262825f87fc03",
  "source": {
    "blob": "1b31d82bf69277cc3cdf58e3918ae4fd24be61a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 196,
    "path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a69a7e44fae262825f87fc03c5bf01040824ff83e63d9682aca580db177e5928",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d45712bf4715ef130a5c1ef6a0e8a488ce0eba5b1dcad9921e51a4acfd3bc84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [X.Nonsingular] : h.IsProper where
  isUniquelyCodimOneFace s :=
    (S.IsUniquelyCodimOneFace.iff _ _).2
      (existsUnique_of_exists_of_unique ⟨_, rfl⟩
        (fun _ _ hi hj ↦ Nonsingular.δ_injective _
          (h.nonDegenerate₁ s) _ _ (hi.trans hj.symm)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b31d82bf69277cc3cdf58e3918ae4fd24be61a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
