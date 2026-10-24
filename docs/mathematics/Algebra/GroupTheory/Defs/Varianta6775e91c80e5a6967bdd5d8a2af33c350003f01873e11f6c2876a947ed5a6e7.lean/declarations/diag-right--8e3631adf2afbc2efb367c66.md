# diag_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a955e9b-0142-b0db-a2e7-4ce1877d29b4",
  "kind": "theorem",
  "lexical_name": "diag_right",
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
  "slug": "diag-right--8e3631adf2afbc2efb367c66",
  "source": {
    "blob": "de55879d2044bc0163723f550618c888800a018a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 148,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e3631adf2afbc2efb367c66f2f3acf9e5293ad598ec769213b7d165c4526051",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a955e9b-0142-b0db-a2e7-4ce1877d29b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diag_right [IsHeckeTriple Δ H₁ H₂] : IsHeckeTriple Δ H₂ H₂ :=
  ⟨right_le H₁, right_le H₁, .refl H₂, le_commensurator_right H₁⟩

end IsHeckeTriple

/-- The setoid on `Δ` identifying elements with the same double coset `H₁gH₂ = H₁hH₂`, pulled
back from `DoubleCoset.setoid` along the inclusion `Δ ↪ G`.

This is an `abbrev` rather than a global instance: the subgroups `H₁, H₂` cannot be inferred
from the submonoid `Δ`, so this cannot participate in instance search (and a global instance
would also create a `Setoid` diamond on `↥Δ` with the left-coset setoid). The quotient map is
`HeckeCoset.mk`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de55879d2044bc0163723f550618c888800a018a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
