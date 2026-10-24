# roleBoundaries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:617b762f2537be814a3175bc027abdcb5b6c35aaeffb05845a294dd76a946236",
  "kind": "def",
  "lexical_name": "roleBoundaries",
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
  "slug": "roleboundaries--dc20887b98a278998f27df74",
  "source": {
    "blob": "f3a3c15dd0308628c11b75906b92cfc732ee1548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f476c75652f436f6e636570744f776e6572736869702e6c65616e/Variant4b676d915a656460d6b37ef1a1564860b76079e8ca736d600d7c9877e309e329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc20887b98a278998f27df74f0b048fba563637532be2d09a1f01e77f18480b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f476c75652f436f6e636570744f776e6572736869702e6c65616e/Variant4b676d915a656460d6b37ef1a1564860b76079e8ca736d600d7c9877e309e329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:617b762f2537be814a3175bc027abdcb5b6c35aaeffb05845a294dd76a946236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def roleBoundaries : List RoleBoundary :=
  [ { concept := Concept.residue
      nonOwnerSurface := "Think.Kernel.Residue"
      boundaryKind := "kernel_atom"
      importsCanonicalOwner := false
      mayClaimOwnership := false }
  , { concept := Concept.residue
      nonOwnerSurface := "Think.Pipeline.ResidueTree"
      boundaryKind := "residue_tree_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.rado
      nonOwnerSurface := "Think.Pipeline.Center.Rado*"
      boundaryKind := "center_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.eml
      nonOwnerSurface := "Think.Pipeline.Center.EMLCompression"
      boundaryKind := "center_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.validation
      nonOwnerSurface := "Think.Validation"
      boundaryKind := "external_validation_receipt"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  , { concept := Concept.geometry
      nonOwnerSurface := "Think.Pipeline.Lattice"
      boundaryKind := "coordinate_adapter"
      importsCanonicalOwner := true
      mayClaimOwnership := false }
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f476c75652f436f6e636570744f776e6572736869702e6c65616e/Variant4b676d915a656460d6b37ef1a1564860b76079e8ca736d600d7c9877e309e329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f476c75652f436f6e636570744f776e6572736869702e6c65616e/Variant4b676d915a656460d6b37ef1a1564860b76079e8ca736d600d7c9877e309e329.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a3c15dd0308628c11b75906b92cfc732ee1548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
