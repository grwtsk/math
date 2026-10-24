# iUnion_cylinder_update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca3bd8d91265aeffa42571b7fef04cad045745bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c111356-7007-c320-1a17-7fe56f127434",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10a5a6f6-e6e5-d4e4-5d54-3e7a3a344de4",
  "kind": "theorem",
  "lexical_name": "iUnion_cylinder_update",
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
  "slug": "iunion-cylinder-update--73b82400d8517b028292b01a",
  "source": {
    "blob": "ca3bd8d91265aeffa42571b7fef04cad045745bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73b82400d8517b028292b01ae95a33f1191334799f9574d60c2ac07b4131bf2d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a5a6f6-e6e5-d4e4-5d54-3e7a3a344de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_cylinder_update (x : ∀ n, E n) (n : ℕ) :
    ⋃ k, cylinder (update x n k) (n + 1) = cylinder x n := by
  ext y
  simp only [mem_cylinder_iff, mem_iUnion]
  constructor
  · rintro ⟨k, hk⟩ i hi
    simpa [hi.ne] using hk i (Nat.lt_succ_of_lt hi)
  · intro H
    refine' ⟨y n, fun i hi => _⟩
    rcases Nat.lt_succ_iff_lt_or_eq.1 hi with (h'i | rfl)
    · simp [H i h'i, h'i.ne]
    · simp
#align pi_nat.Union_cylinder_update PiNat.iUnion_cylinder_update

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3bd8d91265aeffa42571b7fef04cad045745bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
