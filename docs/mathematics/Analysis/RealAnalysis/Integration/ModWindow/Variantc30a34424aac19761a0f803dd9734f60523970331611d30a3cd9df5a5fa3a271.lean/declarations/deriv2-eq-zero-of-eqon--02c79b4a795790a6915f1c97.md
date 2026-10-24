# deriv2_eq_zero_of_eqOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f4a8635-d097-f3e5-462d-ea23799f9de5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:183628fe-4338-5eff-89e5-6ea29822ba90",
  "kind": "theorem",
  "lexical_name": "deriv2_eq_zero_of_eqOn",
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
  "slug": "deriv2-eq-zero-of-eqon--02c79b4a795790a6915f1c97",
  "source": {
    "blob": "401612063d52225f560f886499cc0e07a3c7ba67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c79b4a795790a6915f1c970f359aac62fd87b2e39d8d6581342ae79803c4e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:183628fe-4338-5eff-89e5-6ea29822ba90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv2_eq_zero_of_eqOn {H : ℝ → ℝ} {V : Set ℝ} (hV : IsOpen V) (hz : ∀ v ∈ V, H v = 0)
    {u : ℝ} (hu : u ∈ V) : deriv H u = 0 ∧ deriv (deriv H) u = 0 := by
  have hd : ∀ v ∈ V, deriv H v = 0 := by
    intro v hv
    have : H =ᶠ[nhds v] fun _ => (0:ℝ) := by
      filter_upwards [hV.mem_nhds hv] with x hx using hz x hx
    rw [this.deriv_eq, deriv_const]
  refine ⟨hd u hu, ?_⟩
  have : deriv H =ᶠ[nhds u] fun _ => (0:ℝ) := by
    filter_upwards [hV.mem_nhds hu] with x hx using hd x hx
  rw [this.deriv_eq, deriv_const]

/-- integrability of |h| for a continuous compactly supported h. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variantc30a34424aac19761a0f803dd9734f60523970331611d30a3cd9df5a5fa3a271.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401612063d52225f560f886499cc0e07a3c7ba67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
