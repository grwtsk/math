# prototypeCertifiedTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3baf5705f3a9cd3b10b6b0241a55f3fb12dbd0035cf385a75c022713fed4e382",
  "kind": "def",
  "lexical_name": "prototypeCertifiedTranslation",
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
  "slug": "prototypecertifiedtranslation--3413c9883a4bb44fcbcf0284",
  "source": {
    "blob": "3cbb3856db08f37a5cc890c1bc1342045026291f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 273,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3413c9883a4bb44fcbcf02842a2f30abb741c85bf522dfbdef8a00f45813bfb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Translations/Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3baf5705f3a9cd3b10b6b0241a55f3fb12dbd0035cf385a75c022713fed4e382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prototypeCertifiedTranslation :
    (edge : PrototypeEdge) → PrototypeCertifiedTranslation edge
  | .τPB => .exact (translationPBExactEvidence (Fin 3))
  | .τGP => .faithful (translationGPFaithfulEvidence 3)
  | .τGB => .faithful (translationGBFaithfulEvidence 3)
  | .τBS => .sound (translationBSSoundEvidence 3)
  | .τSH => .theoremTransport translationSHTheoremEvidence
  | .τPH => .sound translationPHSoundEvidence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Translations/Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Varianta0eeacf6afe6facdcfe024cdf523d25410b1a340a89cb64689e2f5c8faf0b952.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbb3856db08f37a5cc890c1bc1342045026291f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
