# explicit_source_reassembled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c510906-943f-88ad-6d8e-eec0246d2818",
  "kind": "theorem",
  "lexical_name": "explicit_source_reassembled",
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
  "slug": "explicit-source-reassembled--2ae2ce20fd9eb78b56dc9a37",
  "source": {
    "blob": "01c21c8a4c448d240c8a0bbe6d3a06e1b4d24dea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variant2d1f1a65f5e3800d88f42a237800622d3b4092ad0e21d89aa23dea1b966aab9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ae2ce20fd9eb78b56dc9a37d6fa9d622fa44fd3b78500de3c537a9320f657fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variant2d1f1a65f5e3800d88f42a237800622d3b4092ad0e21d89aa23dea1b966aab9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c510906-943f-88ad-6d8e-eec0246d2818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_source_reassembled (A : ℝ) (cut : ℕ) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A +
        ∑ i, ∑ n ∈ ownedPiece (sourceInventory A) (thresholdBlocks A cut) i,
          (-2) * sourceAtom explicitSecondDerivative A n :=
  sourceQuadraticValue_reassembled _ _ _ (thresholdBlocks_cover A cut)

/-- The existing source identity still carries the signed pairing and its
complete endpoint correction after the concrete ownership regrouping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variant2d1f1a65f5e3800d88f42a237800622d3b4092ad0e21d89aa23dea1b966aab9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variant2d1f1a65f5e3800d88f42a237800622d3b4092ad0e21d89aa23dea1b966aab9e.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c21c8a4c448d240c8a0bbe6d3a06e1b4d24dea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
