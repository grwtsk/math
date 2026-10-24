# holomorphic_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc59bf3e2575b9ff46c26632d7833f4d105a309b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ef241af-310a-ff63-1f16-bc5d774fc70d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:769da013-67ef-bba0-ffbb-af2bcc5e33ff",
  "kind": "theorem",
  "lexical_name": "holomorphic_ext",
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
  "slug": "holomorphic-ext--2ff1e902eb6c8ecda57f21fd",
  "source": {
    "blob": "fc59bf3e2575b9ff46c26632d7833f4d105a309b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 151,
    "path": "GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ff1e902eb6c8ecda57f21fd073b417b74ccf20aee2af2119fcde84ea6fd3a8c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769da013-67ef-bba0-ffbb-af2bcc5e33ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem holomorphic_ext (D : BinaryDomainCover) {f g : HolomorphicSection D.X}
    (hU : GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToU f =
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToU g)
    (hV : GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToV f =
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom D.xToV g) :
    f = g := by
  apply Subtype.ext
  apply D.functionSheafCertificate.separated
  · exact congrArg (fun s : HolomorphicSection D.U => (s : Section D.U)) hU
  · exact congrArg (fun s : HolomorphicSection D.V => (s : Section D.V)) hV

/-- Existence and uniqueness in the actual holomorphic-section fiber, at the declared open cover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicOpenCoverGluing.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59bf3e2575b9ff46c26632d7833f4d105a309b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
