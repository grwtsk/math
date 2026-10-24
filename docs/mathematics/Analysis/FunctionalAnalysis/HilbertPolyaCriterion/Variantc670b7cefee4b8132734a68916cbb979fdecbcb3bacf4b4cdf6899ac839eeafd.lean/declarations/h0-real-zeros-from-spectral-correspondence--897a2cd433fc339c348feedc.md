# h0_real_zeros_from_spectral_correspondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ea4feb3b14477e7d16134793b4d4fbc648dae3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae49c55a-dbcf-30fa-6a93-a529a594e23d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e83c573-8891-0f5c-f148-6bf2466f46bd",
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
  "slug": "h0-real-zeros-from-spectral-correspondence--897a2cd433fc339c348feedc",
  "source": {
    "blob": "6ea4feb3b14477e7d16134793b4d4fbc648dae3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 21,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantc670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:897a2cd433fc339c348feedcb14bbd23917ba8e33b7cbeacaaa7c0f0901248b8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantc670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e83c573-8891-0f5c-f148-6bf2466f46bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–41.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantc670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertPolyaCriterion/Variantc670b7cefee4b8132734a68916cbb979fdecbcb3bacf4b4cdf6899ac839eeafd.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ea4feb3b14477e7d16134793b4d4fbc648dae3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
