# latticeGroupLoci_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c6dcfce6f35371eb4aad778ca10d5a50b1de6c85bb67d40241e16b1959df88a",
  "kind": "def",
  "lexical_name": "latticeGroupLoci_refl",
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
  "slug": "latticegrouploci-refl--77ae8324ad0a2734e9525b38",
  "source": {
    "blob": "e358fc7dee844c4f6c9166df19e54d0daf73c30b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77ae8324ad0a2734e9525b38dc76c307d17481699432d71ea4412be79b173211",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c6dcfce6f35371eb4aad778ca10d5a50b1de6c85bb67d40241e16b1959df88a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def latticeGroupLoci_refl {α : Type}
    (source : CompressedString α) :
    PreservesLatticeGroupLoci source source :=
  { preservesLookup := preserves_semantics_and_lookup_refl source
    decodedForward := fun locus => locus
    decodedBackward := fun locus => locus
    sliceForward := fun locus => locus
    sliceBackward := fun locus => locus
    preservesSliceOrderForward := by
      intro _ _ h
      exact h
    preservesSliceOrderBackward := by
      intro _ _ h
      exact h
    decodedRoundtripLeft := by
      intro _
      rfl
    decodedRoundtripRight := by
      intro _
      rfl
    sliceRoundtripLeft := by
      intro _
      rfl
    sliceRoundtripRight := by
      intro _
      rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e358fc7dee844c4f6c9166df19e54d0daf73c30b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
