# hasBasis_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07068d3a-8f47-dc66-7870-5666dacce764",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds_zero",
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
  "slug": "hasbasis-nhds-zero--23b07ede9cd67ba66e6065e0",
  "source": {
    "blob": "1f57b93827036112f888d959dc0b0635b8560d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23b07ede9cd67ba66e6065e0cf664525d86ee177e6c93e02954e25b0bdf48527",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07068d3a-8f47-dc66-7870-5666dacce764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhds_zero : HasBasis (@nhds A hB.topology 0) (fun _ => True) fun i => B i :=
  ⟨by
    intro s
    rw [hB.toRingFilterBasis.toAddGroupFilterBasis.nhds_zero_hasBasis.mem_iff]
    constructor
    · rintro ⟨-, ⟨i, rfl⟩, hi⟩
      exact ⟨i, trivial, hi⟩
    · rintro ⟨i, -, hi⟩
      exact ⟨B i, ⟨i, rfl⟩, hi⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f57b93827036112f888d959dc0b0635b8560d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
