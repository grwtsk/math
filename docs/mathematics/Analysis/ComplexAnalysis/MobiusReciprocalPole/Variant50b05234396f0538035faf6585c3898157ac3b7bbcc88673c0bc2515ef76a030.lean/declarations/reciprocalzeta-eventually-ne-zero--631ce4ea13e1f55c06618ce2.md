# reciprocalZeta_eventually_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af9d1221b3dba58e68f7a26c10afecfb7911a838",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7894cf72-4a60-9862-2a64-8c84d503b9ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7172f184-685a-4dce-bd9d-f7c17afaf0cc",
  "kind": "theorem",
  "lexical_name": "reciprocalZeta_eventually_ne_zero",
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
  "slug": "reciprocalzeta-eventually-ne-zero--631ce4ea13e1f55c06618ce2",
  "source": {
    "blob": "af9d1221b3dba58e68f7a26c10afecfb7911a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:631ce4ea13e1f55c06618ce21cec751e24ace66a0a0592dd0205908d624ee39d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7172f184-685a-4dce-bd9d-f7c17afaf0cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalZeta_eventually_ne_zero :
    ∀ᶠ s in 𝓝[≠] 0, reciprocalZeta s ≠ 0 ∧ riemannZeta (1 + s) ≠ 0 := by
  have hf := zetaPoleFactor_analyticAt_zero.continuousAt.eventually_ne
    (by simp : zetaPoleFactor 0 ≠ 0)
  filter_upwards [hf.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with s hs hs0
  have hr : reciprocalZeta s ≠ 0 := by
    rw [reciprocalZeta_eq_div_factor]
    exact div_ne_zero hs0 hs
  exact ⟨hr, by simpa only [reciprocalZeta_off s hs0, ne_eq, inv_eq_zero] using hr⟩

/-- The literal logarithmically smoothed Perron integrand, including its source zeta factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af9d1221b3dba58e68f7a26c10afecfb7911a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
