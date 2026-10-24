# actualNegativeEdgeMass_eq_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:898a7b00-397d-2b65-151b-8bcb8715e6e1",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeMass_eq_psi",
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
  "slug": "actualnegativeedgemass-eq-psi--83e0256790ee6e8111c9150c",
  "source": {
    "blob": "1b01a62bdf3c5c9bf7eaeacef4e976803aca91d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83e0256790ee6e8111c9150cf801e458c5a300ed8ffbaf20c6d2e61f84c11d29",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:898a7b00-397d-2b65-151b-8bcb8715e6e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeMass_eq_psi (A : ℝ) :
    (∑ n ∈ actualNegativeEdgeWindow A, (vonMangoldt n : ℝ)) =
      Chebyshev.psi (Real.exp (2 * A - 12)) - Chebyshev.psi (Real.exp (2 * A - 13)) := by
  have hf : ⌊Real.exp (2 * A - 13)⌋₊ ≤ ⌊Real.exp (2 * A - 12)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  rw [actualNegativeEdgeWindow, Chebyshev.psi, Chebyshev.psi]
  exact (Finset.sum_Ioc_sub_sum_Ioc (a := 0) (f := fun n => (vonMangoldt n : ℝ))
    (by omega) hf).symm

/-- Genuine PNT gives a relative lower mass for every sufficiently large real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/948e3edbb89f383174542783f38661a446a4ccc067f670cd44a86af1e62547c1SourceActualNega/Variante02d2ac9f0bd49297da0e5c0f2118676332d3338ccdd394c4eea26d642982a6f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b01a62bdf3c5c9bf7eaeacef4e976803aca91d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
