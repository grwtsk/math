# hasSum_Ez

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
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93c361cd-dc51-3250-0ff7-a9e9fc1e61b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:188389df-5899-9d30-6d05-a60f0b30c8a1",
  "kind": "theorem",
  "lexical_name": "hasSum_Ez",
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
  "slug": "hassum-ez--dd30ee5db3e5a5d8be35cc69",
  "source": {
    "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 406,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd30ee5db3e5a5d8be35cc69503791a2c62a61fabaaed1f6c521d93bf55634be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188389df-5899-9d30-6d05-a60f0b30c8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_Ez :
    HasSum (fun x : {ρ : Z.carrier // ρ ∉ H.sA} =>
      ((Z.mult (x : Z.carrier) : ℝ) : ℂ) • vecMulVec (uvec P T (x : Z.carrier)) (uvec P T (x : Z.carrier)))
      (Z.Ez P T) := by
  refine Pi.hasSum.mpr fun k => Pi.hasSum.mpr fun l => ?_
  have hG : HasSum (fun ρ : Z.carrier => Z.Gsummand P T k l ρ) (Z.Gz P T k l) :=
    (H.summable_Gsummand k l).hasSum
  have hE : HasSum (fun x : {ρ : Z.carrier // ρ ∉ H.sA} => Z.Gsummand P T k l (x : Z.carrier))
      (Z.Ez P T k l) := by
    apply (Finset.hasSum_compl_iff (f := fun ρ : Z.carrier => Z.Gsummand P T k l ρ) H.sA).mpr
    have : Z.Ez P T k l + ∑ x ∈ H.sA, Z.Gsummand P T k l (x : ℂ) = Z.Gz P T k l := by
      rw [← H.Az_eq_sum]; show (Z.Gz P T - Z.Az P T) k l + _ = _; simp
    rw [this]; exact hG
  simpa only [Matrix.smul_apply, vecMulVec_apply, smul_eq_mul, Complex.ofReal_natCast,
    Gsummand_eq] using hE

/-- The scaled version: κ•E = ∑ (κ m_ρ) u_ρ u_ρᵀ, and traceNorm (κ•E) ≤ κ·L·θ₀ for κ ≥ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a23db0fa1f46fe9574b8968d63c6913836676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
