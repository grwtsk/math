# evalDual_congr_at_0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85e48e8d-832b-8bad-92e6-a993f573edf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7affe193-6775-7f6a-3066-3f0b09d8cd88",
  "kind": "theorem",
  "lexical_name": "evalDual_congr_at_0",
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
  "slug": "evaldual-congr-at-0--934eaee292cdea5f62c478d7",
  "source": {
    "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 443,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:934eaee292cdea5f62c478d79cc7b2d4361c74eda468a3a74d0ec8a9a9d22f76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7affe193-6775-7f6a-3066-3f0b09d8cd88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDual_congr_at_0 (e : Expr) (h : UsesOnlyVar0 e)
    (ρ₁ ρ₂ : DualEnv) (heq : ρ₁ 0 = ρ₂ 0) :
    evalDual e ρ₁ = evalDual e ρ₂ := by
  induction h generalizing ρ₁ ρ₂ with
  | const q => simp only [evalDual]
  | var0 => simp only [evalDual, heq]
  | add _ _ _ _ ih₁ ih₂ =>
    simp only [evalDual, ih₁ ρ₁ ρ₂ heq, ih₂ ρ₁ ρ₂ heq]
  | mul _ _ _ _ ih₁ ih₂ =>
    simp only [evalDual, ih₁ ρ₁ ρ₂ heq, ih₂ ρ₁ ρ₂ heq]
  | neg _ _ ih =>
    simp only [evalDual, ih ρ₁ ρ₂ heq]
  | sin _ _ ih =>
    simp only [evalDual, ih ρ₁ ρ₂ heq]
  | cos _ _ ih =>
    simp only [evalDual, ih ρ₁ ρ₂ heq]
  | exp _ _ ih =>
    simp only [evalDual, ih ρ₁ ρ₂ heq]
  | atan _ _ ih =>
    simp only [evalDual, ih ρ₁ ρ₂ heq]
  | arsinh _ _ ih =>
    simp only [evalDual, ih ρ₁ ρ₂ heq]

/-- mkDualEnv at index 0 equals varActive at 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6758f0dac2c2058bc3b222cc1575703c166ec55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
