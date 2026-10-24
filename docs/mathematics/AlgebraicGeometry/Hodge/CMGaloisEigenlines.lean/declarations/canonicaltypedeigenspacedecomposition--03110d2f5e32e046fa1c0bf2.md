# canonicalTypedEigenspaceDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb51a9257c64b57e4740443f10a9f84e86f25cfb7e93bfc410eba50a963f0a8e",
  "kind": "def",
  "lexical_name": "canonicalTypedEigenspaceDecomposition",
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
  "slug": "canonicaltypedeigenspacedecomposition--03110d2f5e32e046fa1c0bf2",
  "source": {
    "blob": "b59ccd41eab0807d8f739789c4d50d56e583b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 375,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03110d2f5e32e046fa1c0bf22bff1b2483c6cd8773bde4681708a5b990723b2f",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb51a9257c64b57e4740443f10a9f84e86f25cfb7e93bfc410eba50a963f0a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def canonicalTypedEigenspaceDecomposition
    {conj : (E ≃ₐ[k] E) → (E ≃ₐ[k] E)}
    (v : CMFourBalance.OddSignRow (E ≃ₐ[k] E) conj) :
    CMEmbeddingEigenspaces.CharacterEigenspaceDecomposition
      E E (E ⊗[k] E) (E ≃ₐ[k] E) conj v where
  action := regularAction (k := k) (E := E) (C := E)
  character := fun σ => σ.toAlgHom
  line_finrank_one := fun σ => embeddingEigenspace_finrank_one_aut k E σ
  line_nonzero := fun σ => embeddingEigenspace_nonzero_aut k E σ
  typeAt := fun σ => CMEmbeddingLines.typeOfSign (v.value σ)
  typeAt_eq := fun _ => rfl
  decomposition := canonicalEigenspaces_isInternal k E
/-- Package the canonical Galois embedding eigenspaces into the generic
character-eigenline interface once a sign-compatible weight-one type
assignment is supplied. One-dimensionality and nonvanishing are proved here;
only the Hodge-type assignment remains external to this construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59ccd41eab0807d8f739789c4d50d56e583b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
