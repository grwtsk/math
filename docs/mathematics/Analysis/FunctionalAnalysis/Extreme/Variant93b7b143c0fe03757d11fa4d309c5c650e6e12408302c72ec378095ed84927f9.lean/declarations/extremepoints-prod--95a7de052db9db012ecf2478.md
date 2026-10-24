# extremePoints_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1534f8048721e1dfbc097d7077ee4ed9fae6301",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e979255-6fd6-49e1-2770-c87f1c0b2a95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c2a39f5-6abb-31e2-2acf-936295455168",
  "kind": "theorem",
  "lexical_name": "extremePoints_prod",
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
  "slug": "extremepoints-prod--95a7de052db9db012ecf2478",
  "source": {
    "blob": "e1534f8048721e1dfbc097d7077ee4ed9fae6301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 180,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a7de052db9db012ecf24787cec31e2812bd95e2ba0c202d22de2a451ab5a84",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2a39f5-6abb-31e2-2acf-936295455168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extremePoints_prod (s : Set E) (t : Set F) :
    (s ×ˢ t).extremePoints 𝕜 = s.extremePoints 𝕜 ×ˢ t.extremePoints 𝕜 := by
  ext
  refine (and_congr_right fun hx ↦ ⟨fun h ↦ ?_, fun h ↦ ?_⟩).trans and_and_and_comm
  constructor
  · rintro x₁ hx₁ x₂ hx₂ hx_fst
    refine (h (mk_mem_prod hx₁ hx.2) (mk_mem_prod hx₂ hx.2) ?_).imp (congr_arg Prod.fst)
        (congr_arg Prod.fst)
    rw [← Prod.image_mk_openSegment_left]
    exact ⟨_, hx_fst, rfl⟩
  · rintro x₁ hx₁ x₂ hx₂ hx_snd
    refine (h (mk_mem_prod hx.1 hx₁) (mk_mem_prod hx.1 hx₂) ?_).imp (congr_arg Prod.snd)
        (congr_arg Prod.snd)
    rw [← Prod.image_mk_openSegment_right]
    exact ⟨_, hx_snd, rfl⟩
  · rintro x₁ hx₁ x₂ hx₂ ⟨a, b, ha, hb, hab, hx'⟩
    simp_rw [Prod.ext_iff]
    exact and_and_and_comm.1
        ⟨h.1 hx₁.1 hx₂.1 ⟨a, b, ha, hb, hab, congr_arg Prod.fst hx'⟩,
          h.2 hx₁.2 hx₂.2 ⟨a, b, ha, hb, hab, congr_arg Prod.snd hx'⟩⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1534f8048721e1dfbc097d7077ee4ed9fae6301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
