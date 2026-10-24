# actualShortMangoldt_unweighted_eq_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a463352-e20a-d955-7d9a-dbe7770298d3",
  "kind": "theorem",
  "lexical_name": "actualShortMangoldt_unweighted_eq_psi",
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
  "slug": "actualshortmangoldt-unweighted-eq-psi--6c8d5ec48047e6e934efdb50",
  "source": {
    "blob": "387e89f58db44b4dc83e910e180ff0c35e837b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8d5ec48047e6e934efdb50132f81d1764a27e279e2731737f9e57968a25649",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a463352-e20a-d955-7d9a-dbe7770298d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortMangoldt_unweighted_eq_psi {A : ℝ} (hA : 1 ≤ A) :
    (∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ)) =
      Chebyshev.psi (A ^ 2) := by
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  rw [Chebyshev.psi, show ⌊A ^ 2⌋₊ = vaughanCutoff A from rfl, hI]
  simp

/-- Curvature and the true floor logarithm give a positive actual source at every short atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387e89f58db44b4dc83e910e180ff0c35e837b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
