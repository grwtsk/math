# canonicalRankOneCoefficientFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c254cac78f9ed50e3655425f5a8d6c819ce4cadebf4cdad37b5284f8b9676579",
  "kind": "def",
  "lexical_name": "canonicalRankOneCoefficientFrame",
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
  "slug": "canonicalrankonecoefficientframe--a0974ff444d8e23e447639ba",
  "source": {
    "blob": "39bd0fe2ead6f3fcf5172242f35be88807a0dff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0974ff444d8e23e447639bab717ef01a75f1c08195149f7899dbcb083d6e7c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c254cac78f9ed50e3655425f5a8d6c819ce4cadebf4cdad37b5284f8b9676579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalRankOneCoefficientFrame (N : ℕ) :
    ConductorThreeCoefficientPacketFrame N where
  Atom := Fin (2 * N + 1)
  atomFintype := inferInstance
  index := id
  kind := fun _ ↦ .boundary
  amplitude := fun n ↦ (twistedVonMangoldtThree n : ℂ)
  packet := fun n ↦
    canonicalUnitSpatialProfile.encoder (twistedVonMangoldtThree n : ℂ)
  readout := canonicalUnitSpatialProfile.decoder
  collapse := by
    intro n
    classical
    rw [Finset.sum_eq_single n]
    · simp
    · intro b _ hbn
      simp [hbn]
    · simp
  readout_packet := by
    intro n
    exact canonicalUnitSpatialProfile.decoder_encoder
      (twistedVonMangoldtThree n : ℂ)

end

end Surface.Core.PrimeLattice.MomentPath
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39bd0fe2ead6f3fcf5172242f35be88807a0dff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
