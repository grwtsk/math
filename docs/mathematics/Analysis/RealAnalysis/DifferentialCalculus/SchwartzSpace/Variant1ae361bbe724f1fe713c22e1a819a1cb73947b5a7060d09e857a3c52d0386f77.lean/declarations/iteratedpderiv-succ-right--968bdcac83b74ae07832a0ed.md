# iteratedPDeriv_succ_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a20344d9-505f-b6db-8943-035381d3e278",
  "kind": "theorem",
  "lexical_name": "iteratedPDeriv_succ_right",
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
  "slug": "iteratedpderiv-succ-right--968bdcac83b74ae07832a0ed",
  "source": {
    "blob": "e75c6e687d9eb08e82647fa3303034476aa82b79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1050,
    "line": 1033,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:968bdcac83b74ae07832a0ed730a9a0738490f6c1c41c07e3b16979ebbba1517",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20344d9-505f-b6db-8943-035381d3e278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1033–1050.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedPDeriv_succ_right {n : ℕ} (m : Fin (n + 1) → E) (f : 𝓢(E, F)) :
    iteratedPDeriv 𝕜 m f = iteratedPDeriv 𝕜 (Fin.init m) (pderivCLM 𝕜 (m (Fin.last n)) f) := by
  induction n with
  | zero =>
    rw [iteratedPDeriv_zero, iteratedPDeriv_one, Fin.last_zero]
  -- The proof is `∂^{n + 2} = ∂ ∂^{n + 1} = ∂ ∂^n ∂ = ∂^{n+1} ∂`
  | succ n IH =>
    have hmzero : Fin.init m 0 = m 0 := by simp only [Fin.init_def, Fin.castSucc_zero]
    have hmtail : Fin.tail m (Fin.last n) = m (Fin.last n.succ) := by
      simp only [Fin.tail_def, Fin.succ_last]
    calc
      _ = pderivCLM 𝕜 (m 0) (iteratedPDeriv 𝕜 _ f) := iteratedPDeriv_succ_left _ _ _
      _ = pderivCLM 𝕜 (m 0) ((iteratedPDeriv 𝕜 _) ((pderivCLM 𝕜 _) f)) := by
        congr 1
        exact IH _
      _ = _ := by
        simp only [hmtail, iteratedPDeriv_succ_left, hmzero, Fin.tail_init_eq_init_tail]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant1ae361bbe724f1fe713c22e1a819a1cb73947b5a7060d09e857a3c52d0386f77.lean#L1033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e75c6e687d9eb08e82647fa3303034476aa82b79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
