# weighted_coefficient_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfef46f0-d45a-4d79-5178-5562ff76dbed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e944f7c8-25e3-d879-8aff-5f0a3b5d092f",
  "kind": "theorem",
  "lexical_name": "weighted_coefficient_phase",
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
  "slug": "weighted-coefficient-phase--f3e643e02611a6629c19b24a",
  "source": {
    "blob": "c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3e643e02611a6629c19b24a7e17ce8fa7eb6e0a4a859e612e46e639bfe59c29",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e944f7c8-25e3-d879-8aff-5f0a3b5d092f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_coefficient_phase (n k : ℕ) (z : ℂ) :
    ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k =
      8 * ((2 * n).choose (2 * k) : ℂ) * (thetaMoment k : ℂ) *
        (Complex.I * z / (2 * (n : ℂ))) ^ (2 * k) := by
  rw [weighted_coefficient_eq_moment, phase_even_power]
  push_cast
  ring

/-- The new finite closure is the exact theta mixture of its two phase branches. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/XiJensenPhase/Variantd60ec765a02c9ba2561d245a0300a1ad91ac4fe574a922f5a3ac4b75dbf3632e.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b527d2ac6dfb6a8bc62ff3ec9e7a625b3b3625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
