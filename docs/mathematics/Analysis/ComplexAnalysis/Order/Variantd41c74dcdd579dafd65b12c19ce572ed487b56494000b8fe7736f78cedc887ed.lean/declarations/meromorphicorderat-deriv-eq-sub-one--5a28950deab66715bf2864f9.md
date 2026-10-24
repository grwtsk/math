# meromorphicOrderAt_deriv_eq_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1002,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7d4ab1d-f799-3286-e066-30421c5db4c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fb4b83f-7c86-1af0-cfc7-4e6ae694438b",
  "kind": "lemma",
  "lexical_name": "meromorphicOrderAt_deriv_eq_sub_one",
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
  "slug": "meromorphicorderat-deriv-eq-sub-one--5a28950deab66715bf2864f9",
  "source": {
    "blob": "d2a45051c74b71cf27654c2aa16bfb975ce76b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1025,
    "line": 1002,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a28950deab66715bf2864f905a4e407271d3fc49f91f77adc7182c6aa11acbc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb4b83f-7c86-1af0-cfc7-4e6ae694438b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1002–1025.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphicOrderAt_deriv_eq_sub_one [CompleteSpace E] {f : 𝕜 → E} {x : 𝕜} {n : ℤ}
    (hn : (n : 𝕜) ≠ 0) (hf : meromorphicOrderAt f x = ↑n) :
    meromorphicOrderAt (deriv f) x = ↑(n - 1) := by
  have hmero : MeromorphicAt f x := meromorphicAt_of_meromorphicOrderAt_ne_zero (by aesop)
  rw [meromorphicOrderAt_eq_int_iff hmero] at hf
  rw [meromorphicOrderAt_eq_int_iff hmero.deriv]
  obtain ⟨g, hga, hg0, (hg : f =ᶠ[𝓝[≠] x] fun z ↦ (z - x) ^ n • g z)⟩ := hf
  refine ⟨fun z ↦ (n : 𝕜) • g z + (z - x) • deriv g z, by fun_prop, by simpa using ⟨hn, hg0⟩, ?_⟩
  filter_upwards [hga.eventually_analyticAt.filter_mono (nhdsWithin_le_nhds),
    eventually_mem_nhdsWithin, hg.nhdsNE_deriv] with z hgz hmem hz
  have hzx : z - x ≠ 0 := by simpa [sub_eq_zero] using hmem
  calc
    deriv f z = deriv (fun z ↦ (z - x) ^ n • g z) z :=
      hz
    _ = (z - x) ^ n • deriv g z + deriv ((· ^ n) ∘ (· - x)) z • g z :=
      deriv_fun_smul (by fun_prop (disch := grind)) hgz.differentiableAt
    _ = (z - x) ^ n • deriv g z + (n * (z - x) ^ (n - 1)) • g z := by
      rw [deriv_comp _ (by fun_prop (disch := grind)) (by fun_prop)]
      simp [deriv_zpow]
    _ = (z - x) ^ (n - 1) • ((n : 𝕜) • g z + (z - x) • deriv g z) := by
      simp [smul_smul, ← zpow_add_one₀ hzx, add_comm, mul_comm]

/-- Equivalent to `meromorphicOrderAt_deriv_eq_sub_one` with a slightly different statement so the
conclusion matches more targets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Order/Variantd41c74dcdd579dafd65b12c19ce572ed487b56494000b8fe7736f78cedc887ed.lean#L1002).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2a45051c74b71cf27654c2aa16bfb975ce76b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
