# continuous_comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098f85dc-acc7-c1cb-d1db-661f9e541d26",
  "kind": "theorem",
  "lexical_name": "continuous_comp'",
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
  "slug": "continuous-comp--bafd804e8d84491776c200dd",
  "source": {
    "blob": "4147406fcaf630234d7511a9db4a78a189f9b18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bafd804e8d84491776c200dd27db89aff1937321d1a97c28aa17efae2ce55a98",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098f85dc-acc7-c1cb-d1db-661f9e541d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_comp' [LocallyCompactSpace β] :
    Continuous fun x : C(α, β) × C(β, γ) => x.2.comp x.1 :=
  continuous_generateFrom
    (by
      rintro M ⟨K, hK, U, hU, rfl⟩
      conv =>
        congr
        rw [CompactOpen.gen, preimage_setOf_eq]
        --congr
        ext; dsimp [setOf]
        rw [image_comp, image_subset_iff]
      rw [isOpen_iff_forall_mem_open]
      rintro ⟨φ₀, ψ₀⟩ H
      obtain ⟨L, hL, hKL, hLU⟩ := exists_compact_between (hK.image φ₀.2) (hU.preimage ψ₀.2) H
      use { φ : C(α, β) | φ '' K ⊆ interior L } ×ˢ { ψ : C(β, γ) | ψ '' L ⊆ U }
      -- porting note: typing hint `: φ '' K ⊆ interior L` wasn't previously required
      use fun ⟨φ, ψ⟩ ⟨(hφ : φ '' K ⊆ interior L), hψ⟩ =>
        subset_trans hφ (interior_subset.trans <| image_subset_iff.mp hψ)
      use (ContinuousMap.isOpen_gen hK isOpen_interior).prod (ContinuousMap.isOpen_gen hL hU)
      exact mem_prod.mpr ⟨hKL, image_subset_iff.mpr hLU⟩)
#align continuous_map.continuous_comp' ContinuousMap.continuous_comp'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant22296824c7a5166ed881a45b9ed96c829bad2da614fe6d0918460938285c5b9d.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4147406fcaf630234d7511a9db4a78a189f9b18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
