# log_four_mul_le_two_mul_l

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c37f1622-3215-5397-fd86-1e7eebefb5a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c1bbcf0-6b2a-3c04-2ad7-946a437213e6",
  "kind": "lemma",
  "lexical_name": "log_four_mul_le_two_mul_l",
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
  "slug": "log-four-mul-le-two-mul-l--fce9c86af1de7022f4a8607c",
  "source": {
    "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce9c86af1de7022f4a8607cbca9296eb268d2c7bf7e7219666f0cee8ab005c8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c1bbcf0-6b2a-3c04-2ad7-946a437213e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_four_mul_le_two_mul_l {T : ℝ} (hT : T₀ ≤ T) : Real.log (4 * T) ≤ 2 * l T := by
  have hT' : (300:ℝ) ≤ T := hT
  have hπ : Real.pi ≤ 4 := Real.pi_le_four
  have hπ0 : 0 < Real.pi := Real.pi_pos
  unfold l
  have h2π : 0 < T / (2 * Real.pi) := by positivity
  have hsq : (2 * Real.pi) * (2 * Real.pi) ≤ 64 := by nlinarith
  have h : Real.log (4 * T) ≤ Real.log ((T / (2 * Real.pi)) * (T / (2 * Real.pi))) := by
    apply Real.log_le_log (by positivity)
    rw [div_mul_div_comm, le_div_iff₀ (by positivity)]
    nlinarith
  rw [Real.log_mul h2π.ne' h2π.ne'] at h
  linarith

/-- The "so that" clause of [prop:tail]: with K = e^{L/4} C₁, C₁ ≤ 2‖ϱ″‖₁ (as w ≥ 1),
e^{L/2} = X^{1/2} = (T/2π)^{λ/2} ≤ T^{λ/2}, log(4T) ≤ 2l, D₀² = T:
θ₀ ≤ 32 A₀ ‖ϱ″‖₁² l T^{λ/2−1}. Stated for the concrete L = λ·l of Defs; R stands for ‖ϱ″‖₁. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a23db0fa1f46fe9574b8968d63c6913836676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
