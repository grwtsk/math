# functionSheafCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61d6d2db5d66a1b820416b79b9b48652471926203166ff8ba7d42a9d1414b049",
  "kind": "def",
  "lexical_name": "functionSheafCertificate",
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
  "slug": "functionsheafcertificate--dc1e21b5dd34f895e0185b81",
  "source": {
    "blob": "6a123a0d14f1e3194d8e838d1110c05c5c9cc0ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/Analysis/Complex/HolomorphicRestrictionGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc1e21b5dd34f895e0185b81566567db055708b74808956bcfa30137d7a41c2f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61d6d2db5d66a1b820416b79b9b48652471926203166ff8ba7d42a9d1414b049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functionSheafCertificate (D : BinaryDomainCover) :
    GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate D.toPortCover where
  hasGluing := by
    intro sU sV h
    exact ⟨
      { global := D.glue sU sV h
        restrictU := D.restrict_glue_left sU sV h
        restrictV := D.restrict_glue_right sU sV h }⟩
  separated := by
    intro f g hU hV
    funext x
    rcases D.cover x.2 with hxU | hxV
    · have hpoint := congrFun hU (⟨x.1, hxU⟩ : D.U.carrier)
      simpa [xToU, restrict, system] using hpoint
    · have hpoint := congrFun hV (⟨x.1, hxV⟩ : D.V.carrier)
      simpa [xToV, restrict, system] using hpoint

/-- A matching local pair with its overlap proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicRestrictionGluing.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a123a0d14f1e3194d8e838d1110c05c5c9cc0ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
