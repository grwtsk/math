# correctionProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f407034c79f4095b5e36449020d804cfdca4d83f66dac0e6959e5af6f477c4e4",
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
  "slug": "correctionproof--5a724ea91b1784e54c83a4c8",
  "source": {
    "blob": "6e1cacc2d20ec15b8031a4d3aff1e9eb8223d04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variantba048919282c3ef92825e4a2d6d9025e7cca141f2dc196e26ce244344a496551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a724ea91b1784e54c83a4c81130e0e589f6eba300586a357b99f7904645e882",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variantba048919282c3ef92825e4a2d6d9025e7cca141f2dc196e26ce244344a496551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f407034c79f4095b5e36449020d804cfdca4d83f66dac0e6959e5af6f477c4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–142.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variantba048919282c3ef92825e4a2d6d9025e7cca141f2dc196e26ce244344a496551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variantba048919282c3ef92825e4a2d6d9025e7cca141f2dc196e26ce244344a496551.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1cacc2d20ec15b8031a4d3aff1e9eb8223d04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
