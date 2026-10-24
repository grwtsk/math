# nhdsWithin_stolzCone_le_nhdsWithin_stolzSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:289c1aad-3f78-c452-b3a7-eb3506575688",
  "kind": "lemma",
  "lexical_name": "nhdsWithin_stolzCone_le_nhdsWithin_stolzSet",
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
  "slug": "nhdswithin-stolzcone-le-nhdswithin-stolzset--f51fc576ec58adb9a4ac7a23",
  "source": {
    "blob": "de589450eee0c96e29c82e8d75a80714666b345b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f51fc576ec58adb9a4ac7a235353a30ac25c744be888b23ba5c4fa18f7ec9541",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289c1aad-3f78-c452-b3a7-eb3506575688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nhdsWithin_stolzCone_le_nhdsWithin_stolzSet {s : ℝ} (hs : 0 < s) :
    ∃ M, 𝓝[stolzCone s] 1 ≤ 𝓝[stolzSet M] 1 := by
  obtain ⟨M, ε, _, hε, H⟩ := stolzCone_subset_stolzSet_aux hs
  use M
  rw [nhdsWithin_le_iff, mem_nhdsWithin]
  refine ⟨{w | 1 - ε < w.re}, isOpen_lt continuous_const continuous_re, ?_, H⟩
  simp only [Set.mem_ofPred_eq, one_re, sub_lt_self_iff, hε]

end StolzSet

variable {f : ℕ → ℂ} {l : ℂ}

/-- Auxiliary lemma for Abel's limit theorem. The difference between the sum `l` at 1 and the
power series's value at a point `z` away from 1 can be rewritten as `1 - z` times a power series
whose coefficients are tail sums of `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de589450eee0c96e29c82e8d75a80714666b345b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
