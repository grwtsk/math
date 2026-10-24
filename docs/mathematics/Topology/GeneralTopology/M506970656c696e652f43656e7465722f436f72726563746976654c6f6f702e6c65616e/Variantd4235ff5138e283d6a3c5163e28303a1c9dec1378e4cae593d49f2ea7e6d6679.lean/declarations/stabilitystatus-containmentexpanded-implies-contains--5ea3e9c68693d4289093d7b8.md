# stabilityStatus_containmentExpanded_implies_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:844e9d55-3be8-0dc5-3e8e-272968e821e4",
  "kind": "theorem",
  "lexical_name": "stabilityStatus_containmentExpanded_implies_contains",
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
  "slug": "stabilitystatus-containmentexpanded-implies-contains--5ea3e9c68693d4289093d7b8",
  "source": {
    "blob": "5505d2d6d57d82cf092d7debbccff9d2db4bd3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea3e9c68693d4289093d7b8872204c4eca1762a8b892bafa45c2cbf6882fb71",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844e9d55-3be8-0dc5-3e8e-272968e821e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilityStatus_containmentExpanded_implies_contains
    (previous next : LoopState)
    (h :
      stabilityStatus previous next =
        FixedPointStatus.containmentExpanded) :
    ledgerContains previous.containedLedger next.containedLedger := by
  unfold stabilityStatus at h
  by_cases hboundary : previous.authorityBoundary = next.authorityBoundary
  · simp [hboundary] at h
    by_cases hnonclaims : previous.nonclaims = next.nonclaims
    · simp [hnonclaims] at h
      by_cases hactive : previous.activeResidues = next.activeResidues
      · simp [hactive] at h
        by_cases hledger : previous.containedLedger = next.containedLedger
        · simp [hledger] at h
          by_cases hclean : previous.cleanPayload = next.cleanPayload
          · simp [hclean] at h
            by_cases houtput : previous.outputPayload = next.outputPayload
            · simp [houtput] at h
              by_cases hempty : next.activeResidues = []
              · simp [hempty] at h
              · simp [hempty] at h
            · simp [houtput] at h
          · simp [hclean] at h
        · simp [hledger] at h
          exact ledgerShiftStatus_expanded_implies_contains previous next h
      · simp [hactive] at h
    · simp [hnonclaims] at h
  · simp [hboundary] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5505d2d6d57d82cf092d7debbccff9d2db4bd3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
