# exact_annihilation_has_no_penalty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9de3eae-3886-3ce9-e945-eefe6d867b3d",
  "kind": "theorem",
  "lexical_name": "exact_annihilation_has_no_penalty",
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
  "slug": "exact-annihilation-has-no-penalty--28a9d06df48a68a30bbe6516",
  "source": {
    "blob": "9a177d0586fabfc6f729a66afa138aa74c44184f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variantef169e419c0f6e829de896b1bd77eb685ce48debd25bb190c5965ee8026cd470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a9d06df48a68a30bbe6516d014003adfaa4c77aa5174bee173547b3e16cd6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variantef169e419c0f6e829de896b1bd77eb685ce48debd25bb190c5965ee8026cd470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9de3eae-3886-3ce9-e945-eefe6d867b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_annihilation_has_no_penalty {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq ι] (M : Matrix ι ι ℝ) (B : Matrix κ κ ℝ)
    (L : Matrix κ ι ℝ) (d : ι → ℝ) {ε Z : ℝ} (hZ : 0 < Z)
    (hpositive : (M + L.transpose * B * L + ε • (1 : Matrix ι ι ℝ)).PosSemidef)
    (halign : L.mulVec d = 0) :
    -ε * (∑ i, d i ^ 2) / Z ≤ quadratic M d / Z := by
  have h := normalized_penalty_leakage M B L d hZ hpositive
  simpa [halign, quadratic] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variantef169e419c0f6e829de896b1bd77eb685ce48debd25bb190c5965ee8026cd470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variantef169e419c0f6e829de896b1bd77eb685ce48debd25bb190c5965ee8026cd470.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a177d0586fabfc6f729a66afa138aa74c44184f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
