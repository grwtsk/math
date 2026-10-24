# contourPull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25981fab-fafe-ae59-1631-8afc2576f84e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a632c4b3-1869-cb7a-1328-2ff5c202029c",
  "kind": "lemma",
  "lexical_name": "contourPull",
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
  "slug": "contourpull--0864263d0ab85c504bb92ddc",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 613,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0864263d0ab85c504bb92ddc62a05467e619e9123e478d904d41495a8200cbfe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a632c4b3-1869-cb7a-1328-2ff5c202029c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contourPull {σ' σ'' : ℝ} (xpos : 0 < x) (hσ0 : 0 ∉ [[σ', σ'']])
    (hσ1 : -1 ∉ [[σ', σ'']]) :
    VerticalIntegral (f x) σ' = VerticalIntegral (f x) σ'' := by
  refine verticalIntegral_eq_verticalIntegral ((isHolomorphicOn xpos).mono ?_)
    (tendsto_zero_Lower xpos σ' σ'') (tendsto_zero_Upper xpos σ' σ'')
    (isIntegrable xpos (fun h ↦ hσ0 (h ▸ left_mem_uIcc))
      (fun h ↦ hσ1 (h ▸ left_mem_uIcc)))
    (isIntegrable xpos (fun h ↦ hσ0 (h ▸ right_mem_uIcc))
      (fun h ↦ hσ1 (h ▸ right_mem_uIcc)))
  rintro ⟨x, y⟩ ⟨hx, hy⟩ ⟨hc | hc⟩ <;> simp_all [Complex.ext_iff]

blueprint_comment /--
We are ready for the first case of the Perron formula, namely when $x<1$:
-/
@[blueprint
  "formulaLtOne"
  (title := "formulaLtOne")
  (statement := /--
  For $x>0$, $\sigma>0$, and $x<1$, we have
  $$
  \frac1{2\pi i}
  \int_{(\sigma)}\frac{x^s}{s(s+1)}ds =0.
  $$
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
