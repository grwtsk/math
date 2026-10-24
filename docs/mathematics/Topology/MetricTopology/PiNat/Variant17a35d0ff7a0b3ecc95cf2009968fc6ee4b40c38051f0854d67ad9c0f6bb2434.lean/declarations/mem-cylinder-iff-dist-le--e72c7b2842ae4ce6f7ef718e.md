# mem_cylinder_iff_dist_le

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
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:603858c2-7246-99ba-fce1-bf94b87edbfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f4fd4e1-99dc-8e0e-0efb-4dd3531980a5",
  "kind": "theorem",
  "lexical_name": "mem_cylinder_iff_dist_le",
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
  "slug": "mem-cylinder-iff-dist-le--e72c7b2842ae4ce6f7ef718e",
  "source": {
    "blob": "ca3bd8d91265aeffa42571b7fef04cad045745bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 314,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e72c7b2842ae4ce6f7ef718e0d2a1fdcd874f8df201c3a67e626bf0fce2b6c32",
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

Occurrence: `result:3f4fd4e1-99dc-8e0e-0efb-4dd3531980a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_cylinder_iff_dist_le {x y : ∀ n, E n} {n : ℕ} :
    y ∈ cylinder x n ↔ dist y x ≤ (1 / 2) ^ n := by
  rcases eq_or_ne y x with (rfl | hne)
  · simp [PiNat.dist_self]
  suffices (∀ i : ℕ, i < n → y i = x i) ↔ n ≤ firstDiff y x by simpa [dist_eq_of_ne hne]
  constructor
  · intro hy
    by_contra' H
    exact apply_firstDiff_ne hne (hy _ H)
  · intro h i hi
    exact apply_eq_of_lt_firstDiff (hi.trans_le h)
#align pi_nat.mem_cylinder_iff_dist_le PiNat.mem_cylinder_iff_dist_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3bd8d91265aeffa42571b7fef04cad045745bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
