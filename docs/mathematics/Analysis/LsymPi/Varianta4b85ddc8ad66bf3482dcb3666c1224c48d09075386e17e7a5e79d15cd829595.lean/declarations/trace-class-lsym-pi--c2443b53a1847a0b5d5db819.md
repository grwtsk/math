# trace_class_Lsym_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93f4864e1da5e19a4f61db4256e234bb13a6d2eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e150d0e1-d09c-f0c3-ebe9-d6eb82f2dc1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54fa7cf3-30d3-72f0-b67e-4df8c1f0676a",
  "kind": "lemma",
  "lexical_name": "trace_class_Lsym_pi",
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
  "slug": "trace-class-lsym-pi--c2443b53a1847a0b5d5db819",
  "source": {
    "blob": "93f4864e1da5e19a4f61db4256e234bb13a6d2eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Analysis/LsymPi/Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2443b53a1847a0b5d5db8198665123d545d9af567bb887ba5c0c0858731acc5",
  "verification": {
    "reference": "docs/verification/Analysis/LsymPi/Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54fa7cf3-30d3-72f0-b67e-4df8c1f0676a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trace_class_Lsym_pi
    (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    TraceClass ℂ (Hϕ ϕ) (Lsym_pi Φ hϕ) := by
  let seq := fun n : ℕ ↦ Lt_pi Φ (1 / (n + 1 : ℝ))
  let ops := fun n ↦ TraceClass.mk' (seq n)
    (SpectralProof.Core.integrable_KtWeighted Φ _ ϕ hϕ sorry)
  exact TraceClass.limit_closed ops

/--
If Φ is real on the real axis (i.e. Φ(-λ) = conj Φ(λ)), then Lsym_π is symmetric.
This implies self-adjointness since Lsym_π is compact.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LsymPi/Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LsymPi/Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f4864e1da5e19a4f61db4256e234bb13a6d2eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
