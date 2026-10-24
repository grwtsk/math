# MemLp.uniformIntegrable_of_identDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:473f92c8-53ec-5839-5a63-adf852ee6cc1",
  "kind": "theorem",
  "lexical_name": "MemLp.uniformIntegrable_of_identDistrib",
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
  "slug": "memlp-uniformintegrable-of-identdistrib--bde9545a76952704ddd4274a",
  "source": {
    "blob": "f41181451b5ee29856accadce842ab60e1cf0f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 332,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bde9545a76952704ddd4274a08825419a2d148a7a6362dfcf3f9d6070caee992",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:473f92c8-53ec-5839-5a63-adf852ee6cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.uniformIntegrable_of_identDistrib {ι : Type*} {f : ι → α → E} {j : ι} {p : ℝ≥0∞}
    (hp : 1 ≤ p) (hp' : p ≠ ∞) (hℒp : MemLp (f j) p μ) (hf : ∀ i, IdentDistrib (f i) (f j) μ μ) :
    UniformIntegrable f p μ := by
  have hfmeas : ∀ i, AEStronglyMeasurable (f i) μ := fun i =>
    (hf i).aestronglyMeasurable_iff.2 hℒp.1
  set g : ι → α → E := fun i => (hfmeas i).choose
  have hgmeas : ∀ i, StronglyMeasurable (g i) := fun i => (Exists.choose_spec <| hfmeas i).1
  have hgeq : ∀ i, g i =ᵐ[μ] f i := fun i => (Exists.choose_spec <| hfmeas i).2.symm
  have hgℒp : MemLp (g j) p μ := hℒp.ae_eq (hgeq j).symm
  exact UniformIntegrable.ae_eq
    (MemLp.uniformIntegrable_of_identDistrib_aux hp hp' hgℒp hgmeas fun i =>
      (IdentDistrib.of_ae_eq (hgmeas i).aemeasurable (hgeq i)).trans
        ((hf i).trans <| IdentDistrib.of_ae_eq (hfmeas j).aemeasurable (hgeq j).symm)) hgeq

@[deprecated (since := "2025-02-21")]
alias Memℒp.uniformIntegrable_of_identDistrib := MemLp.uniformIntegrable_of_identDistrib

end UniformIntegrable

/-- If `X` and `Y` are independent and `(X, Y)` and `(X', Y')` are identically distributed,
then `X'` and `Y'` are independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41181451b5ee29856accadce842ab60e1cf0f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
