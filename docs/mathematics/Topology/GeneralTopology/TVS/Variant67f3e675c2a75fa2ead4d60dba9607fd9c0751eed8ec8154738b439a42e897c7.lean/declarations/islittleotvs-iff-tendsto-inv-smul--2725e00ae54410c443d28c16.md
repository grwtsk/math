# isLittleOTVS_iff_tendsto_inv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90bf9688-b8e8-8f7b-f3ec-a2655995155e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:141c5835-aeda-fe61-cda2-663b862d6481",
  "kind": "lemma",
  "lexical_name": "isLittleOTVS_iff_tendsto_inv_smul",
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
  "slug": "islittleotvs-iff-tendsto-inv-smul--2725e00ae54410c443d28c16",
  "source": {
    "blob": "5624ae2be391f87ef07b2377952d05a28e73510e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 481,
    "path": "GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2725e00ae54410c443d28c1685de9cefe9e05a338325b34eee6b3840301e9466",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:141c5835-aeda-fe61-cda2-663b862d6481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLittleOTVS_iff_tendsto_inv_smul [ContinuousSMul 𝕜 E] {f : α → 𝕜} {g : α → E} {l : Filter α}
    (h₀ : ∀ᶠ x in l, f x = 0 → g x = 0) :
    g =o[𝕜; l] f ↔ Tendsto (fun x ↦ (f x)⁻¹ • g x) l (𝓝 0) := by
  refine ⟨IsLittleOTVS.tendsto_inv_smul, fun h ↦ ?_⟩
  refine (((isLittleOTVS_one (𝕜 := 𝕜)).mpr h).smul_left f).congr' (h₀.mono fun x hx ↦ ?_) (by simp)
  by_cases h : f x = 0 <;> simp [h, hx]

variable (𝕜) in
/-- If `f` converges along `l` to a finite limit `x`, then `f =O[𝕜, l] 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TVS/Variant67f3e675c2a75fa2ead4d60dba9607fd9c0751eed8ec8154738b439a42e897c7.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5624ae2be391f87ef07b2377952d05a28e73510e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
