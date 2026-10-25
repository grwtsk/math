# parseGuardMsgsFilterSeverity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a11c2933ebc20e2a9afd84dcf5f18de5a48341f0f356566a30f2621be3fdef1",
  "kind": "def",
  "lexical_name": "parseGuardMsgsFilterSeverity",
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
  "slug": "parseguardmsgsfilterseverity--0bfbea05ff9e00eb77fc692b",
  "source": {
    "blob": "d354ed3bbd4686ff922ab9a5da574a61f3fc0067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bfbea05ff9e00eb77fc692b74b24d97bbf17a15e23a92a079af09173ef1d270",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a11c2933ebc20e2a9afd84dcf5f18de5a48341f0f356566a30f2621be3fdef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseGuardMsgsFilterSeverity : TSyntax ``guardMsgsFilterSeverity → CommandElabM (Message → Bool)
  | `(guardMsgsFilterSeverity| trace) => pure fun msg => msg.isTrace
  | `(guardMsgsFilterSeverity| info)  => pure fun msg => !msg.isTrace && msg.severity == .information
  | `(guardMsgsFilterSeverity| warning) => pure fun msg => !msg.isTrace && msg.severity == .warning
  | `(guardMsgsFilterSeverity| error) => pure fun msg => !msg.isTrace && msg.severity == .error
  | `(guardMsgsFilterSeverity| all)   => pure fun _ => true
  | _ => throwUnsupportedSyntax

/-- Parses a `GuardMsgsSpec`.
- No specification: check everything.
- With a specification: interpret the spec, and if nothing applies pass it through. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant443e16d68a7a39a87cac73247cf7fc9a626b306ad0679995e612bf6a55a42db8.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d354ed3bbd4686ff922ab9a5da574a61f3fc0067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
