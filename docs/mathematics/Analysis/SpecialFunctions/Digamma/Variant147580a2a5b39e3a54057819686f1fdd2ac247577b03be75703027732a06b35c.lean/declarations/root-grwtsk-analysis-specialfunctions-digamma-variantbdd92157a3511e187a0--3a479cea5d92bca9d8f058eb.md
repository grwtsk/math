# _root_.GRWTSK.Analysis.SpecialFunctions.Digamma.Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.HasDerivAt.logDeriv_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ec647ad-312c-a186-bb93-b0e20c80d6e6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.SpecialFunctions.Digamma.Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.HasDerivAt.logDeriv_Gamma",
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
  "slug": "root-grwtsk-analysis-specialfunctions-digamma-variantbdd92157a3511e187a0--3a479cea5d92bca9d8f058eb",
  "source": {
    "blob": "d627d94a189a80cbdd3936f8603734529af80ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a479cea5d92bca9d8f058eb0626fc232d6093ea8a559e16f349e0d25fec6006",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ec647ad-312c-a186-bb93-b0e20c80d6e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.SpecialFunctions.Digamma.Variantbdd92157a3511e187a0b6c4ee4ea7d1d707d713761d598bfbf7b288942b25d02.HasDerivAt.logDeriv_Gamma {g : ℂ → ℂ} {a s : ℂ} (hg : HasDerivAt g a s)
    (h : ∀ m : ℕ, g s ≠ -(m : ℂ)) :
    logDeriv (fun z ↦ Gamma (g z)) s = a * digamma (g s) := by
  rw [show (fun z ↦ Gamma (g z)) = Gamma ∘ g from rfl,
    logDeriv_comp (differentiableAt_Gamma _ h) hg.differentiableAt, hg.deriv, digamma_def]
  exact mul_comm _ _

/-- **The digamma duplication formula** `ψ(2s) = ½(ψ(s) + ψ(s + ½)) + log 2`, for
`2s ∉ {0, -1, -2, …}`, which is equivalent to `s` and `s + ½` both avoiding the poles of `ψ`.
Proved from Legendre's doubling `Complex.Gamma_mul_Gamma_add_half` by taking logarithmic
derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d627d94a189a80cbdd3936f8603734529af80ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
