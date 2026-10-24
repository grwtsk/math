# terminalErase_injectiveOn_of_observable_injectiveOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6895387-2ec3-ce9b-7865-8bdf5f8157c9",
  "kind": "theorem",
  "lexical_name": "terminalErase_injectiveOn_of_observable_injectiveOn",
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
  "slug": "terminalerase-injectiveon-of-observable-injectiveon--672fa83619aff7c976935d66",
  "source": {
    "blob": "0f3349c77d863f9fdc1dc66abcd013a32a2597c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:672fa83619aff7c976935d66796da06a0285be429a40769a263217f775973503",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6895387-2ec3-ce9b-7865-8bdf5f8157c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminalErase_injectiveOn_of_observable_injectiveOn
    (X : ℕ) (S : Set CanonicalFourFamilyRealPacket)
    (hobs : Set.InjOn (canonicalFourFamilyWindowReadout X) S) :
    Set.InjOn (canonicalFourFamilyTerminalErase X) S := by
  intro u hu v hv he
  apply hobs hu hv
  calc
    canonicalFourFamilyWindowReadout X u =
        canonicalFourFamilyWindowReadout X
          (canonicalFourFamilyTerminalErase X u) :=
      canonicalFourFamilyWindowReadout_eq_terminalErase X u
    _ = canonicalFourFamilyWindowReadout X
          (canonicalFourFamilyTerminalErase X v) := by rw [he]
    _ = canonicalFourFamilyWindowReadout X v :=
      (canonicalFourFamilyWindowReadout_eq_terminalErase X v).symm

/-- Authentic centered-support test at a family-center cell. This is a
mathematical *support* predicate, NOT an assertion that a real coordinate
has been realized as a difference of two arithmetic configurations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyRestrictedObservability.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3349c77d863f9fdc1dc66abcd013a32a2597c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
