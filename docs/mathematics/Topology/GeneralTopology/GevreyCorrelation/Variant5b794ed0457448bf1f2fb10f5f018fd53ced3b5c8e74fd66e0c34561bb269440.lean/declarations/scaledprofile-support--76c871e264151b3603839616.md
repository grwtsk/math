# scaledProfile_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ad42e47-0d7f-dbf1-7e28-6a9c961d5954",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03a37430-6bb8-fba3-3507-5b006a46dcf3",
  "kind": "theorem",
  "lexical_name": "scaledProfile_support",
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
  "slug": "scaledprofile-support--76c871e264151b3603839616",
  "source": {
    "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c871e264151b3603839616c90c46aa7c738f4f7e1922c607025c4ddf34e1e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03a37430-6bb8-fba3-3507-5b006a46dcf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledProfile_support {h : ℝ → ℝ} (hs : support h ⊆ Icc (-1) 1)
    {A : ℝ} (hA : 0 < A) : support (scaledProfile h A) ⊆ Icc (-A) A := by
  intro x hx
  have hh : h (x / A) ≠ 0 := by
    intro hz
    exact hx (by simp [scaledProfile, hz])
  obtain ⟨hl, hr⟩ := hs hh
  constructor
  · have := (le_div_iff₀ hA).mp hl
    nlinarith
  · have := (div_le_iff₀ hA).mp hr
    nlinarith

/-- Differentiating and applying the pole multiplier preserves the source radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381ea2a831d39222ecdc6a913652c016b4b2aaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
