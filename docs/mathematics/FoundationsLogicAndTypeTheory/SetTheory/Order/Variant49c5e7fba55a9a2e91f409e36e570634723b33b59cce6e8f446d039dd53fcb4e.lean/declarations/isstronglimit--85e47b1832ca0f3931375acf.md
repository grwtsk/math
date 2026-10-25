# IsStrongLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d16ef86972dfa3df09b7eb8c137b6b8b4ea14c7c733b82e403db5a5a76f12a9b",
  "kind": "structure",
  "lexical_name": "IsStrongLimit",
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
  "slug": "isstronglimit--85e47b1832ca0f3931375acf",
  "source": {
    "blob": "091c2bbaf40772e88363a0b09de99d5040f6b25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85e47b1832ca0f3931375acff88bfa7bba222c352bcbb272ad10af649ed2309b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d16ef86972dfa3df09b7eb8c137b6b8b4ea14c7c733b82e403db5a5a76f12a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsStrongLimit (c : Cardinal) : Prop where
  ne_zero : c ≠ 0
  protected isStrongPrelimit : IsStrongPrelimit c

@[deprecated (since := "2026-03-31")]
alias IsStrongLimit.two_power_lt := IsStrongLimit.isStrongPrelimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant49c5e7fba55a9a2e91f409e36e570634723b33b59cce6e8f446d039dd53fcb4e.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `091c2bbaf40772e88363a0b09de99d5040f6b25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
