# hasSmallLocalizedHom_iff_of_isos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23009fe9-5ab0-1dbf-93a8-ddbe2267da83",
  "kind": "lemma",
  "lexical_name": "hasSmallLocalizedHom_iff_of_isos",
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
  "slug": "hassmalllocalizedhom-iff-of-isos--0afe69e2b201b42c6714288c",
  "source": {
    "blob": "39f6c16314b60f0baecf1d074fb09726ed71914e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0afe69e2b201b42c6714288cb57e9977ec4160c5e1ca6839ee61c4053c26f851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23009fe9-5ab0-1dbf-93a8-ddbe2267da83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSmallLocalizedHom_iff_of_isos {X' Y' : C} (e : X ≅ X') (e' : Y ≅ Y') :
    HasSmallLocalizedHom.{w} W X Y ↔ HasSmallLocalizedHom.{w} W X' Y' := by
  simp only [hasSmallLocalizedHom_iff W W.Q]
  exact small_congr (Iso.homCongr (W.Q.mapIso e) (W.Q.mapIso e'))

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variant54cd8d664af5f6e131da1f5943502f83106492c9c089be70eecf156fe23242be.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39f6c16314b60f0baecf1d074fb09726ed71914e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
