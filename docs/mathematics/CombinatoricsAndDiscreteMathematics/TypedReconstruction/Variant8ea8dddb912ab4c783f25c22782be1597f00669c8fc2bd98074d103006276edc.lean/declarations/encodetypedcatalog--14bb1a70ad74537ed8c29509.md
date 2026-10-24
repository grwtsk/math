# encodeTypedCatalog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b889f298be1edd42fd9d8e05105f5ce3c95584256a0d1ad9a37bfe9614ed9ec",
  "kind": "def",
  "lexical_name": "encodeTypedCatalog",
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
  "slug": "encodetypedcatalog--14bb1a70ad74537ed8c29509",
  "source": {
    "blob": "c5cfd7fcb46dd80f085f1796e69a4a3c8c859ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant8ea8dddb912ab4c783f25c22782be1597f00669c8fc2bd98074d103006276edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14bb1a70ad74537ed8c295095293c212e071b3eed292f866590a0d7b57c4d20a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant8ea8dddb912ab4c783f25c22782be1597f00669c8fc2bd98074d103006276edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b889f298be1edd42fd9d8e05105f5ce3c95584256a0d1ad9a37bfe9614ed9ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def encodeTypedCatalog (full : CheckedFullDeclaration) {n : ℕ}
    (blocks : Fin n → Finset (SourcePosition full.snapshot.value))
    (cover : ∀ p, ∃ i, p ∈ blocks i) (root : Fin full.value.catalog.length) :
    TypedCompleteCode full blocks where
  selected := Finset.univ.filter fun i => (ownedPiece Finset.univ blocks i).Nonempty
  root := root
  payload := fun _ => root
  masks := encodeOwnedMasks Finset.univ blocks
  ownedMatches := decode_ownedPiece_mask Finset.univ blocks
  inactiveEmpty := by
    intro i inactive
    rw [encodeOwnedMasks, decode_ownedPiece_mask]
    apply Finset.not_nonempty_iff_eq_empty.mp
    simpa only [Finset.mem_filter, Finset.mem_univ, true_and] using inactive
  covered := by
    intro p
    obtain ⟨i, hi, _⟩ := source_position_unique_owner full.snapshot.value blocks cover p
    refine ⟨i, ?_, ?_⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_univ _, ⟨p, hi⟩⟩
    · rw [encodeOwnedMasks, decode_ownedPiece_mask]
      exact hi
  rootSyntax := sourceCatalogSyntax_valid full root
  rootTyped := sourceCatalogTerm_valid full root
  payloadSyntax := fun _ => sourceCatalogSyntax_valid full root
  payloadTyped := fun _ => sourceCatalogTerm_valid full root
  glue := fun _ => .reflexivity _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant8ea8dddb912ab4c783f25c22782be1597f00669c8fc2bd98074d103006276edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TypedReconstruction/Variant8ea8dddb912ab4c783f25c22782be1597f00669c8fc2bd98074d103006276edc.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5cfd7fcb46dd80f085f1796e69a4a3c8c859ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
