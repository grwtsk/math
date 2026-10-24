# correctionProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff2439a940755bafdb9c9dfcbfa62095ebce2777224fb4ead62dd901c5a9db44",
  "kind": "def",
  "lexical_name": "correctionProof",
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
  "slug": "correctionproof--04d4a75ead6668e214481777",
  "source": {
    "blob": "f56d4963403abb8bfb4034a06dcb8b532a914e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04d4a75ead6668e21448177754bf691070a4e71dd6a669e7494bcf1abe5008fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff2439a940755bafdb9c9dfcbfa62095ebce2777224fb4ead62dd901c5a9db44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correctionProof : ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
    (fun g A ↦ -analyticCorrection g A ≤ correction.constant) :=
  .implication (.and (.and (.and archimedeanProof decayingProof) initialProof) endpointProof)
    (by
      intro A _ _ h
      rcases h with ⟨⟨⟨ha, hd⟩, hi⟩, he⟩
      simp only [correction, BoundCertificate.prod_constant, List.map_cons, List.map_nil,
        List.sum_cons, List.sum_nil]
      unfold analyticCorrection
      linarith)

/-- The actual real ray is reconstructed from a bounded cell and an explicit tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f56d4963403abb8bfb4034a06dcb8b532a914e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
