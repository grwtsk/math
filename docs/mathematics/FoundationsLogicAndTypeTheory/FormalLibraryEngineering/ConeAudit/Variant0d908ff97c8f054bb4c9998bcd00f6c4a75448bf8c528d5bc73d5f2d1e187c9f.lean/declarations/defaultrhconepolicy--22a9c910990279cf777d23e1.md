# defaultRHConePolicy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35e9ba2a066a60ee1468846ebd05e18de11412607dc2cc077340cffe0410201c",
  "kind": "def",
  "lexical_name": "defaultRHConePolicy",
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
  "slug": "defaultrhconepolicy--22a9c910990279cf777d23e1",
  "source": {
    "blob": "5d42075b84907862ef7c359a19693076c59abf7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConeAudit/Variant0d908ff97c8f054bb4c9998bcd00f6c4a75448bf8c528d5bc73d5f2d1e187c9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22a9c910990279cf777d23e16a0a5b37c6c095674de034ab7ad690fe65ef9307",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConeAudit/Variant0d908ff97c8f054bb4c9998bcd00f6c4a75448bf8c528d5bc73d5f2d1e187c9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35e9ba2a066a60ee1468846ebd05e18de11412607dc2cc077340cffe0410201c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultRHConePolicy : RHConePolicy where
  exactTargetFirst := true
  h0TranslationTrackedAsAnalyticInput := true
  excludesGrandChallengeSprawl := true
  noCriticalLineConclusionFields := true
  proofStatusAuditRequired := true
  sourceLabel :=
    "narrow RH cone: target -> H0 translation -> zero data -> spectral/trace/positivity -> boundary criterion"

/--
Machine-generated transitive audit report for the narrow RH cone.

The repository script `scripts/rh-dependency-report.py` is the executable source
for this data. This Lean record only documents that a future final-cone input
must be backed by a generated report rather than hand-supplied status fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConeAudit/Variant0d908ff97c8f054bb4c9998bcd00f6c4a75448bf8c528d5bc73d5f2d1e187c9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConeAudit/Variant0d908ff97c8f054bb4c9998bcd00f6c4a75448bf8c528d5bc73d5f2d1e187c9f.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d42075b84907862ef7c359a19693076c59abf7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
