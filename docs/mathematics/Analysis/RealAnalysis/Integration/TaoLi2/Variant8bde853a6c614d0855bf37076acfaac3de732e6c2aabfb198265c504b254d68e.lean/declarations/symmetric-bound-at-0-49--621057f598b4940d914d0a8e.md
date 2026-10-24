# symmetric_bound_at_0_49

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dde51481-308d-9a21-796c-c4c64e558ac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53f347cb-f560-f0f1-56a1-5f6716009313",
  "kind": "theorem",
  "lexical_name": "symmetric_bound_at_0_49",
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
  "slug": "symmetric-bound-at-0-49--621057f598b4940d914d0a8e",
  "source": {
    "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 292,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621057f598b4940d914d0a8e99278d0f31eba98dd16b7f6c522436f13e8d7fc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f347cb-f560-f0f1-56a1-5f6716009313`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetric_bound_at_0_49 :
    ∀ t ∈ Set.Icc (49/100 : ℝ) (49/100),
    |1/Real.log (1 + t) + 1/Real.log (1 - t)| ≤ 2 := by
  intro t ⟨hlo, hhi⟩
  have heq : t = 49/100 := le_antisymm hhi hlo
  subst heq
  have hpos : (0:ℝ) < 49/100 := by norm_num
  have hlt : (49:ℝ)/100 < 1/2 := by norm_num
  exact LeanCert.Engine.TaylorModel.symmetricLogCombination_bounded (49/100) hpos hlt

/-! ### Crude integral bound

Since |g(t)| ≤ 2 on (0, 1/2] and g(t) → 1 as t → 0:
- ∫₀^{1/2} g(t) dt ≤ 2 × (1/2) = 1

For the interval [1/2, 1), we need direct bounds on 1/log(1+t) and 1/log(1-t)
separately (they don't cancel as nicely there).

A more refined analysis using numerical integration would give:
  li(2) ∈ [1.04, 1.05]
-/

-- The key theorem: the integral exists and is bounded
-- This follows from the bounded convergence theorem since:
-- 1. g(t) is bounded on (0, 1/2]
-- 2. g(t) → 1 as t → 0⁺ (removable singularity)
-- 3. g is continuous on (0, 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb8c95ef280735297ffb052a2684ad47c8c958e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
