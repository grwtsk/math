# convexOn_log_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7f0d767-abf3-d796-b626-5f198fa2ae5f",
  "kind": "theorem",
  "lexical_name": "convexOn_log_Gamma",
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
  "slug": "convexon-log-gamma--00b225d86187a3575f75b971",
  "source": {
    "blob": "66d2fda4d34175de21c216eed35ec14fefef3a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 173,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00b225d86187a3575f75b9710861f363e49fafe7e84a3605701206786ae04f6f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7f0d767-abf3-d796-b626-5f198fa2ae5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_log_Gamma : ConvexOn ℝ (Ioi 0) (log ∘ Gamma) := by
  refine' convexOn_iff_forall_pos.mpr ⟨convex_Ioi _, fun x hx y hy a b ha hb hab => _⟩
  have : b = 1 - a := by linarith
  subst this
  simp_rw [Function.comp_apply, smul_eq_mul]
  rw [← log_rpow (Gamma_pos_of_pos hy), ← log_rpow (Gamma_pos_of_pos hx), ←
    log_mul (rpow_pos_of_pos (Gamma_pos_of_pos hx) _).ne'
      (rpow_pos_of_pos (Gamma_pos_of_pos hy) _).ne',
    log_le_log (Gamma_pos_of_pos (add_pos (mul_pos ha hx) (mul_pos hb hy)))
      (mul_pos (rpow_pos_of_pos (Gamma_pos_of_pos hx) _) (rpow_pos_of_pos (Gamma_pos_of_pos hy) _))]
  exact Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma hx hy ha hb hab
#align real.convex_on_log_Gamma Real.convexOn_log_Gamma

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d2fda4d34175de21c216eed35ec14fefef3a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
