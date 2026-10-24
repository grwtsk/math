# isBigO_psi_sub_theta_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 606,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e4fd761-6fbe-3077-58b2-d29886b35418",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02e1c4f7-1d07-6f15-67bb-f162cf585f69",
  "kind": "theorem",
  "lexical_name": "isBigO_psi_sub_theta_sqrt",
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
  "slug": "isbigo-psi-sub-theta-sqrt--76605ad41765bfef0dc1c2df",
  "source": {
    "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 606,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76605ad41765bfef0dc1c2dfad3ed7f810fb31080889b4ae06f0bf88e8721eb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02e1c4f7-1d07-6f15-67bb-f162cf585f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_psi_sub_theta_sqrt : IsBigO atTop (ψ - θ) sqrt := by
  simp_rw [isBigO_iff, Pi.sub_apply, norm_eq_abs, eventually_atTop]
  obtain ⟨C, hC⟩ := psi_sub_theta_le_mul_sqrt
  refine ⟨C, 0, fun x _ ↦ ?_⟩
  have := theta_le_psi x
  rw [abs_of_nonneg (by positivity), abs_of_nonneg (by positivity)]
  exact hC x

end CostaPereira

section PrimeCounting

/-! ## Relation to prime counting

We relate `θ` to the prime counting function `π`.-/

open Asymptotics Filter MeasureTheory

/-- Integrability for the integral in `Chebyshev.primeCounting_eq_theta_div_log_add_integral`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
