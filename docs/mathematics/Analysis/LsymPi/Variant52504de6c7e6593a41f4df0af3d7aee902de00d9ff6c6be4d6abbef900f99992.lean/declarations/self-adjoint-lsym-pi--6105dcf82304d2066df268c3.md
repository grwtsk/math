# self_adjoint_Lsym_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:636f956b-8b2e-85b0-f649-b32cd67cb050",
  "kind": "lemma",
  "lexical_name": "self_adjoint_Lsym_pi",
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
  "slug": "self-adjoint-lsym-pi--6105dcf82304d2066df268c3",
  "source": {
    "blob": "ef35d2514286156c748f7e631ab204b7e73b0cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6105dcf82304d2066df268c35a3d36234e9fae11cd8277e2e8b940e3a34eb88c",
  "verification": {
    "reference": "docs/verification/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:636f956b-8b2e-85b0-f649-b32cd67cb050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma self_adjoint_Lsym_pi
    (Φ : ℝ → ℂ)
    (hΦ_symm : ∀ λ, Φ (-λ) = Complex.conj (Φ λ))
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    IsSelfAdjoint (Lsym_pi Φ hϕ) := by
  -- Strategy: show kernel k_t is real-valued and even ⇒ kernel symmetric
  -- then L_t are symmetric ⇒ limit is symmetric
  sorry

end SpectralProof.Operators
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef35d2514286156c748f7e631ab204b7e73b0cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
