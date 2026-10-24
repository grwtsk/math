# archChi_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f0ed8de-bf82-1e7f-80ab-1693804b9d0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeadc37e-ec6a-1cc9-f0a5-8689d062e0a2",
  "kind": "lemma",
  "lexical_name": "archChi_differentiableOn",
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
  "slug": "archchi-differentiableon--a3a24b9a948d4b8a85aa52d0",
  "source": {
    "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a24b9a948d4b8a85aa52d0012f74e01172825333f2d1716d5f20629110c1d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeadc37e-ec6a-1cc9-f0a5-8689d062e0a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma archChi_differentiableOn :
    DifferentiableOn ℂ (archChi q κ) rightHalfPlane := by
  intro s hs
  apply DifferentiableAt.differentiableWithinAt
  have h1 : DifferentiableAt ℂ (fun s : ℂ => (q : ℂ) ^ (s / 2)) s := by
    apply DifferentiableAt.const_cpow (by fun_prop)
    exact Or.inl (by exact_mod_cast (Nat.pos_of_ne_zero (NeZero.ne q)).ne')
  have h2 : DifferentiableAt ℂ (fun s : ℂ => Complex.Gammaℝ (s + κ)) s := by
    have hre : 0 < (s + (κ:ℂ)).re := by
      have : (0:ℝ) ≤ κ := Nat.cast_nonneg κ
      have hs' : 0 < s.re := hs
      simp only [Complex.add_re, Complex.natCast_re]
      linarith
    have hG : DifferentiableAt ℂ Complex.Gammaℝ (s + κ) :=
      (Gammaℝ_differentiableOn (s + κ) hre).differentiableAt
        (isOpen_rightHalfPlane.mem_nhds hre)
    have haff : DifferentiableAt ℂ (fun z : ℂ => z + (κ:ℂ)) s := by fun_prop
    have hcomp : DifferentiableAt ℂ (Complex.Gammaℝ ∘ fun z : ℂ => z + (κ:ℂ)) s :=
      DifferentiableAt.comp s hG haff
    exact hcomp
  exact h1.mul h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b64e0a553cf16d7498fb2ec52901ec7537d4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
