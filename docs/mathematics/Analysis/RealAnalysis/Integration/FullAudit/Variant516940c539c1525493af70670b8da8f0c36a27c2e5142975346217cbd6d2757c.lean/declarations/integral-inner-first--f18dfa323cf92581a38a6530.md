# integral_inner_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e5a23b4-6d66-28ca-e819-d55f6303c9b0",
  "kind": "theorem",
  "lexical_name": "integral_inner_first",
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
  "slug": "integral-inner-first--f18dfa323cf92581a38a6530",
  "source": {
    "blob": "b377932567934ade5ff070ca3203d60cec461170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f18dfa323cf92581a38a6530051f06ec0849a23bab2f686fed897fbe56252f8c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e5a23b4-6d66-28ca-e819-d55f6303c9b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_inner_first (f : ℝ → FullLineConvolution.FullH) (hf : Integrable f)
    (g : FullLineConvolution.FullH) :
    (∫ u : ℝ, inner ℂ (f u) g) = inner ℂ (∫ u : ℝ, f u) g := by
  calc
    _ = ∫ u : ℝ, conj (inner ℂ g (f u)) := by
      apply integral_congr_ae
      filter_upwards [] with u
      exact (inner_conj_symm _ _).symm
    _ = conj (inner ℂ g (∫ u : ℝ, f u)) := by rw [integral_conj, integral_inner hf]
    _ = _ := inner_conj_symm _ _

/-- Admitted Hilbert-valued Fubini transport gives the full signed double Gram integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b377932567934ade5ff070ca3203d60cec461170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
