# h0_real_zeros_from_spectral_correspondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55fd381-9c28-dc3b-a8b0-c36f79e097fb",
  "kind": "theorem",
  "lexical_name": "h0_real_zeros_from_spectral_correspondence",
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
  "slug": "h0-real-zeros-from-spectral-correspondence--d34ed88e4ed84caadcab4937",
  "source": {
    "blob": "a51b270fd708a5d2a85f7da5dab75da40e42fce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 29,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantdce5dff64db9d9b98665780d0314841fbef3f7610bbf1b308167b3ad192a20a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d34ed88e4ed84caadcab493780cd88b1a745605a1c2573c18a806bf8e5cfb8c2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantdce5dff64db9d9b98665780d0314841fbef3f7610bbf1b308167b3ad192a20a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55fd381-9c28-dc3b-a8b0-c36f79e097fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem h0_real_zeros_from_spectral_correspondence
    {O : RHOperatorData}
    (zeroCorrespondence :
      ∀ z : ℂ,
        H0Zero z ↔ ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (spectralParametersReal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu)) :
    H0RealZeros := by
  intro z hz
  rcases (zeroCorrespondence z).mp hz with ⟨mu, hmu, hparam⟩
  have hReal : H0ZeroIsReal (spectralParameter mu) :=
    spectralParametersReal mu hmu
  simpa [H0ZeroIsReal, hparam] using hReal

/--
Conditional Hilbert-Polya-style criterion.

This theorem does not prove RH unconditionally. It isolates the analytic bridge:
an H0-zero/spectrum correspondence together with real spectral parameters implies
`H0RealZeros`, and hence RH via the imported H0 translation equivalence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantdce5dff64db9d9b98665780d0314841fbef3f7610bbf1b308167b3ad192a20a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantdce5dff64db9d9b98665780d0314841fbef3f7610bbf1b308167b3ad192a20a4.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a51b270fd708a5d2a85f7da5dab75da40e42fce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
