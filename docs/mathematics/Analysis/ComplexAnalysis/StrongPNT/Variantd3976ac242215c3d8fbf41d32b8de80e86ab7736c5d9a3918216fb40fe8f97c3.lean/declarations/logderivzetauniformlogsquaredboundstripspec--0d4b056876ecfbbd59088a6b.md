# LogDerivZetaUniformLogSquaredBoundStripSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8005501b-38ff-fc45-e724-4a61098ddf7f",
  "kind": "lemma",
  "lexical_name": "LogDerivZetaUniformLogSquaredBoundStripSpec",
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
  "slug": "logderivzetauniformlogsquaredboundstripspec--0d4b056876ecfbbd59088a6b",
  "source": {
    "blob": "4174ed82a0b4c9ac6a8ada5434aab619353c11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1665,
    "line": 1660,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4b056876ecfbbd59088a6bfa388e3783511fb59710004f736990bfd766ec64",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8005501b-38ff-fc45-e724-4a61098ddf7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1660–1665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LogDerivZetaUniformLogSquaredBoundStripSpec : ∃ (C : ℝ) (_ : 0 ≤ C),
    ∀ (σ t : ℝ),
    3 ≤ |t| →
        σ ∈ Set.Icc (1 - F / Real.log |t|) (3 / 2) →
            ‖ζ' (σ + t * I) / ζ (σ + t * I)‖ ≤ C * (Real.log |t|) ^ 2 :=
    by exact LogDerivZetaUniformLogSquaredBoundStrip.choose_spec.2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantd3976ac242215c3d8fbf41d32b8de80e86ab7736c5d9a3918216fb40fe8f97c3.lean#L1660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4174ed82a0b4c9ac6a8ada5434aab619353c11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
