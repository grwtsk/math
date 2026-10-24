# eigenvalueMultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db860d0767af40e8f7741f59a889d3b92feb27be0895c8be18c8f7f8875540a2",
  "kind": "def",
  "lexical_name": "eigenvalueMultiplicity",
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
  "slug": "eigenvaluemultiplicity--e13b006c18895dcbc2b8a503",
  "source": {
    "blob": "b7a5c96e11db83d26f37055aa7976d01dcf57cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 14,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralMeasure/Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e13b006c18895dcbc2b8a503e59f82a33f6f45a22e04822dfa98f7f19dc59cd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralMeasure/Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db860d0767af40e8f7741f59a889d3b92feb27be0895c8be18c8f7f8875540a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def eigenvalueMultiplicity
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (state : Bitfield system.bits)
    (value : ℝ) : Nat := by
  classical
  exact
    (Finset.univ.filter
      (fun index =>
        purity.eigenvalue state index = value)).card

/--
Integration against the normalized empirical spectral measure
`m⁻¹ ∑ᵢ δ_{λᵢ}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralMeasure/Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralMeasure/Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a5c96e11db83d26f37055aa7976d01dcf57cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
