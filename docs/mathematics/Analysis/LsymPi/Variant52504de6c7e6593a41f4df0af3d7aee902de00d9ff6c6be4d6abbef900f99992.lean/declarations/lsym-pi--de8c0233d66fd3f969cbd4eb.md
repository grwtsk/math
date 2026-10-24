# Lsym_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:761202ce8b311537f71fe1ede6e1f58a6175f3ed520532cafd65644c65797477",
  "kind": "def",
  "lexical_name": "Lsym_pi",
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
  "slug": "lsym-pi--de8c0233d66fd3f969cbd4eb",
  "source": {
    "blob": "ef35d2514286156c748f7e631ab204b7e73b0cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de8c0233d66fd3f969cbd4eba536ce45e34f7ad50922f0017bd863a3e628ee2a",
  "verification": {
    "reference": "docs/verification/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:761202ce8b311537f71fe1ede6e1f58a6175f3ed520532cafd65644c65797477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Lsym_pi
    (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    Hϕ ϕ →ₗ[ℂ] Hϕ ϕ :=
  let seq := fun n : ℕ ↦ Lt_pi Φ (1 / (n + 1 : ℝ))
  let ops : ℕ → TraceClass ℂ (Hϕ ϕ) := fun n =>
    TraceClass.mk' (seq n) (by
      apply SpectralProof.Core.integrable_KtWeighted Φ (1 / (n + 1 : ℝ)) ϕ hϕ
      -- Use Paley–Wiener decay for Φ here
      sorry)
  let lim := Metric.completeSpace.hasLimit (ops : ℕ → TraceClass ℂ (Hϕ ϕ))
  TraceClass.continuousLinearMap lim.some

/--
Trace-class inclusion of `Lsym_pi`, via closure of the trace-class ideal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef35d2514286156c748f7e631ab204b7e73b0cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
