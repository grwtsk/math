# decodedCandidates_card_le_codes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4804e04-de34-36c0-dbe9-f2dd18bede7c",
  "kind": "theorem",
  "lexical_name": "decodedCandidates_card_le_codes",
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
  "slug": "decodedcandidates-card-le-codes--3e4ab831b60c31e7823e6cc5",
  "source": {
    "blob": "06f01824740e0443e75a125e76e755c34dd610ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e4ab831b60c31e7823e6cc5bd56a6bc877aa8dc72f2fa9f199b2ad150fe90c7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4804e04-de34-36c0-dbe9-f2dd18bede7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodedCandidates_card_le_codes
    [Fintype Alphabet] (t : TraceShapedInput γ m)
    {B : ℝ} (g : BoundedWordGeometricGate t Alphabet L B) :
    (decodedCandidates t g).card ≤ Fintype.card (BoundedWord Alphabet L) := by
  classical
  unfold decodedCandidates
  calc
    (((Finset.univ : Finset (BoundedWord Alphabet L)).image g.decode).eraseNone).card
        ≤ ((Finset.univ : Finset (BoundedWord Alphabet L)).image g.decode).card :=
      Finset.card_eraseNone_le _
    _ ≤ (Finset.univ : Finset (BoundedWord Alphabet L)).card :=
      Finset.card_image_le
    _ = Fintype.card (BoundedWord Alphabet L) := Finset.card_univ

/-- A finite explicit search-size bound; no geometric completeness is
deduced from this combinatorial count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06f01824740e0443e75a125e76e755c34dd610ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
