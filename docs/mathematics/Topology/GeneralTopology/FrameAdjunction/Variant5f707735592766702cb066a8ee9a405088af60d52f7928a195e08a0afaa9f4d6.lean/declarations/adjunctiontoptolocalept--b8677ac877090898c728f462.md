# adjunctionTopToLocalePT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee40dd0d2c89ac974ce4fa5222e2060a39f7115435ba8f8a6effa7673e823aa3",
  "kind": "def",
  "lexical_name": "adjunctionTopToLocalePT",
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
  "slug": "adjunctiontoptolocalept--b8677ac877090898c728f462",
  "source": {
    "blob": "ac396d463fe5d263de0645b1725d730078e44141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/FrameAdjunction/Variant5f707735592766702cb066a8ee9a405088af60d52f7928a195e08a0afaa9f4d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8677ac877090898c728f4628b0f827240a4532995b577a3dc21dc0780d7a2dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FrameAdjunction/Variant5f707735592766702cb066a8ee9a405088af60d52f7928a195e08a0afaa9f4d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee40dd0d2c89ac974ce4fa5222e2060a39f7115435ba8f8a6effa7673e823aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjunctionTopToLocalePT : topToLocale ⊣ pt where
  unit := { app := fun X ↦ TopCat.ofHom ⟨localePointOfSpacePoint X, continuous_def.2 <|
        by rintro _ ⟨u, rfl⟩; simpa using! u.2⟩ }
  counit := { app := fun L ↦ ⟨Frm.ofHom (counitAppCont L)⟩ }

end locale_top_adjunction

end Locale
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FrameAdjunction/Variant5f707735592766702cb066a8ee9a405088af60d52f7928a195e08a0afaa9f4d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FrameAdjunction/Variant5f707735592766702cb066a8ee9a405088af60d52f7928a195e08a0afaa9f4d6.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac396d463fe5d263de0645b1725d730078e44141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
