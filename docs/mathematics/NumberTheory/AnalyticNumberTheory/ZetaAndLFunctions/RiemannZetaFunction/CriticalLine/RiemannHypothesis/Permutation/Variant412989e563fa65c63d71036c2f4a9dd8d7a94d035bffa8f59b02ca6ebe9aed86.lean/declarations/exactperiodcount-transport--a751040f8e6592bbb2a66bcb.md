# exactPeriodCount_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33e8fce8-4cb2-327b-c2b5-43f89d52fd67",
  "kind": "theorem",
  "lexical_name": "exactPeriodCount_transport",
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
  "slug": "exactperiodcount-transport--a751040f8e6592bbb2a66bcb",
  "source": {
    "blob": "ca67382daad7d6bf985ca870ec2ce869c6e47b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 496,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a751040f8e6592bbb2a66bcb63d6fc7cea423c3fcf9e6d245cf1b222cb669369",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e8fce8-4cb2-327b-c2b5-43f89d52fd67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactPeriodCount_transport
    {β : Type*} [Fintype β] [DecidableEq β]
    (e : α ≃ β) (H : Equiv.Perm α) (r : Nat) :
    exactPeriodCount (transport e H) r = exactPeriodCount H r := by
  classical
  unfold exactPeriodCount
  apply Finset.card_bij (fun x _ => e.symm x)
  · intro x hx
    exact (mem_exactPeriodPoints_iff H r (e.symm x)).2
      ((hasExactPeriod_transport_iff e H r x).1
        ((mem_exactPeriodPoints_iff (transport e H) r x).1 hx))
  · intro x₁ hx₁ x₂ hx₂ h
    exact e.symm.injective h
  · intro y hy
    refine ⟨e y, ?_, by simp⟩
    exact (mem_exactPeriodPoints_iff (transport e H) r (e y)).2
      ((hasExactPeriod_transport_iff e H r (e y)).2 <| by
        simpa using (mem_exactPeriodPoints_iff H r y).1 hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca67382daad7d6bf985ca870ec2ce869c6e47b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
