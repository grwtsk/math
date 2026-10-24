# mem_propQCPrecoverage_iff_exists_quasiCompactCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91435d8ad3e3f80a548e5df18fbb81c266400e42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd255fe9-8d0e-08f0-4efa-742d3b82fa28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62df39c0-3324-1ded-87b1-e51a9d261a6e",
  "kind": "lemma",
  "lexical_name": "mem_propQCPrecoverage_iff_exists_quasiCompactCover",
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
  "slug": "mem-propqcprecoverage-iff-exists-quasicompactcover--0599152f1193bbad9db99f81",
  "source": {
    "blob": "91435d8ad3e3f80a548e5df18fbb81c266400e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0599152f1193bbad9db99f8162b03624e3a5d3a6be9472e4123de3c886bd3acb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62df39c0-3324-1ded-87b1-e51a9d261a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_propQCPrecoverage_iff_exists_quasiCompactCover {S : Scheme.{u}} {R : Presieve S} :
    R ∈ propQCPrecoverage P S ↔ ∃ (𝒰 : Scheme.Cover.{u + 1} (precoverage P) S),
      QuasiCompactCover 𝒰.toPreZeroHypercover ∧ R = 𝒰.presieve₀ := by
  rw [Precoverage.mem_iff_exists_zeroHypercover]
  refine ⟨fun ⟨𝒰, h⟩ ↦ ⟨𝒰.weaken propQCPrecoverage_le_precoverage, ?_, h⟩,
    fun ⟨𝒰, _, h⟩ ↦ ⟨⟨𝒰.1, ⟨by simpa, 𝒰.mem₀⟩⟩, h⟩⟩
  rw [← Scheme.presieve₀_mem_qcPrecoverage_iff]
  exact 𝒰.mem₀.1

@[grind .]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91435d8ad3e3f80a548e5df18fbb81c266400e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
