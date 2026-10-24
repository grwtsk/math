# shell_requires_mature_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1df8c990-3cc3-c96b-16b0-c355899a1707",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/InnerProductSpace/SignedWindowGramIdentity.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e6039ac-fe64-c553-98b0-59dbba6b8ec9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:654b292e-6cf9-c11e-b7c4-0090fbf602f0",
  "kind": "theorem",
  "lexical_name": "shell_requires_mature_energy",
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
  "slug": "shell-requires-mature-energy--54c750be86169b7e5b603f19",
  "source": {
    "blob": "a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c750be86169b7e5b603f199ee7492938f6358a219aa2bf3f796016f9ca026a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:654b292e-6cf9-c11e-b7c4-0090fbf602f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_requires_mature_energy {b T : ℝ} (hb : PinnedShellWidth b) (hT : b ≤ T) :
    horizonEnergy b T ≤ 2*matureEnergy b T + 2*localEnergy b T := by
  rw [localEnergy_eq_signed_source hb hT]
  have hG := (matureWave_square_integrable b T).restrict (s := Icc (T-b) T)
  have hH := (horizonWave_square_integrable b T).restrict (s := Icc (T-b) T)
  have hC := (cross_integrable b T).restrict (s := Icc (T-b) T)
  have hS : Integrable (fun u => (matureWave b T u+horizonWave b T u)^2)
      (volume.restrict (Icc (T-b) T)) := by
    apply ((hG.add hH).add (hC.const_mul 2)).congr
    exact Filter.Eventually.of_forall (fun _ => by simp only [Pi.add_apply]; ring)
  calc
    horizonEnergy b T ≤ ∫ u in Icc (T-b) T,
        2*(matureWave b T u)^2 + 2*(matureWave b T u+horizonWave b T u)^2 := by
      apply integral_mono hH ((hG.const_mul 2).add (hS.const_mul 2))
      intro u
      change horizonWave b T u ^ 2 ≤
        2 * matureWave b T u ^ 2 + 2 * (matureWave b T u + horizonWave b T u) ^ 2
      nlinarith [sq_nonneg (2*matureWave b T u+horizonWave b T u)]
    _ = _ := by rw [integral_add (hG.const_mul 2) (hS.const_mul 2),integral_const_mul,
        integral_const_mul]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedWindowGramIdentity/Variant40571cb6ec0ad2b8a1775065e0951d9783a41069e86deda79f89b18713458469.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c814c9f1d6c293eb72c4e88dcdf16b62cdbec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
