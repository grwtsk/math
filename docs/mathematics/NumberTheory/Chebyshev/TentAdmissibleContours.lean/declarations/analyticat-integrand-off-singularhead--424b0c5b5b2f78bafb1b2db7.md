# analyticAt_integrand_off_singularHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:700d6c28-d1a3-307b-da75-55a0d1747516",
  "kind": "theorem",
  "lexical_name": "analyticAt_integrand_off_singularHead",
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
  "slug": "analyticat-integrand-off-singularhead--424b0c5b5b2f78bafb1b2db7",
  "source": {
    "blob": "2974858924a3aa4207314292faafc7cb4a9962c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:424b0c5b5b2f78bafb1b2db7c87af3f3ad45e62046ac25a4dcdd676055abcd7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:700d6c28-d1a3-307b-da75-55a0d1747516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticAt_integrand_off_singularHead (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (s : ℂ) (hs : s ∈ interior N) (hout : s ∉ singularHead N) :
    AnalyticAt ℂ (integrand x h) s := by
  apply analyticAt_integrand x h hh ha s
  · intro he
    exact hout ((mem_singularHead_iff N s).mpr ⟨hs, Or.inl he⟩)
  · intro hz
    exact hout ((mem_singularHead_iff N s).mpr ⟨hs, Or.inr hz⟩)

/-- Compact-edge integrability follows from the actual boundary analyticity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2974858924a3aa4207314292faafc7cb4a9962c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
