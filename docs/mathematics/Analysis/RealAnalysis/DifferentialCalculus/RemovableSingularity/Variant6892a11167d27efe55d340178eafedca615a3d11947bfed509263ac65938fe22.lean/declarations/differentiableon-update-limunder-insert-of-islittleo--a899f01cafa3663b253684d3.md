# differentiableOn_update_limUnder_insert_of_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1eedd09fad3792d301f2e94bcc6d47b969c7c72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5f6b220-5d3d-95f5-a0e5-c10558436ff0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f38a0f3e-4c9c-3e4e-6c8a-ba440f1a1473",
  "kind": "theorem",
  "lexical_name": "differentiableOn_update_limUnder_insert_of_isLittleO",
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
  "slug": "differentiableon-update-limunder-insert-of-islittleo--a899f01cafa3663b253684d3",
  "source": {
    "blob": "f1eedd09fad3792d301f2e94bcc6d47b969c7c72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a899f01cafa3663b253684d3988e1e0c961d38d04a21c2394476618bc5ef108b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f38a0f3e-4c9c-3e4e-6c8a-ba440f1a1473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableOn_update_limUnder_insert_of_isLittleO {f : ℂ → E} {s : Set ℂ} {c : ℂ}
    (hc : s ∈ 𝓝[≠] c) (hd : DifferentiableOn ℂ f s)
    (ho : (fun z => f z - f c) =o[𝓝[≠] c] fun z => (z - c)⁻¹) :
    DifferentiableOn ℂ (update f c (limUnder (𝓝[≠] c) f)) (insert c s) :=
  differentiableOn_update_limUnder_of_isLittleO (insert_mem_nhds_iff.2 hc)
    (hd.mono fun _ hz => hz.1.resolve_left hz.2) ho

/-- **Removable singularity** theorem: if `s` is a neighborhood of `c : ℂ`, a function `f : ℂ → E`
is complex differentiable and is bounded on `s \ {c}`, then `f` redefined to be equal to
`limUnder (𝓝[≠] c) f` at `c` is complex differentiable on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1eedd09fad3792d301f2e94bcc6d47b969c7c72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
