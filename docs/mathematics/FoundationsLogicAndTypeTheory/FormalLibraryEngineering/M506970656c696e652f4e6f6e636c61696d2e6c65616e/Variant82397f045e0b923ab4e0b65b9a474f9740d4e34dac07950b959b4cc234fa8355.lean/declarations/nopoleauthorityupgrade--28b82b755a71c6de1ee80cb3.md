# noPoleAuthorityUpgrade

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a233198cc36c9bf6b7fef608023c9ee63ced8c243b3c35338f2307c9f40243c1",
  "kind": "def",
  "lexical_name": "noPoleAuthorityUpgrade",
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
  "slug": "nopoleauthorityupgrade--28b82b755a71c6de1ee80cb3",
  "source": {
    "blob": "52e56597200065090bc2d68a05fcb1b7ad992aa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4e6f6e636c61696d2e6c65616e/Variant82397f045e0b923ab4e0b65b9a474f9740d4e34dac07950b959b4cc234fa8355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28b82b755a71c6de1ee80cb3823a7ecfcf2b51a5c416f9aa8b0cdfe1baba0d7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4e6f6e636c61696d2e6c65616e/Variant82397f045e0b923ab4e0b65b9a474f9740d4e34dac07950b959b4cc234fa8355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a233198cc36c9bf6b7fef608023c9ee63ced8c243b3c35338f2307c9f40243c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noPoleAuthorityUpgrade (n : Nonclaim) : Prop :=
  n.phase ∈ Think.centerSpine ∧
    (nonclaimAuthorityLabel n).authority = AuthorityClass.refused ∧
    ∀ r ∈ Think.pipelineResidues, r.target = FWR.Target.CenterWeightedPipeline

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4e6f6e636c61696d2e6c65616e/Variant82397f045e0b923ab4e0b65b9a474f9740d4e34dac07950b959b4cc234fa8355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4e6f6e636c61696d2e6c65616e/Variant82397f045e0b923ab4e0b65b9a474f9740d4e34dac07950b959b4cc234fa8355.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e56597200065090bc2d68a05fcb1b7ad992aa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
