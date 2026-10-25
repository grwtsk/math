# CyclicRotationAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8582c7381920d74c70ddb048cfa631d4a81e5d2dee140db1eba605a98b7f3486",
  "kind": "structure",
  "lexical_name": "CyclicRotationAction",
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
  "slug": "cyclicrotationaction--48caec3fa2a1d7be12b4a6fa",
  "source": {
    "blob": "241ff1d4c55bbed0096f59f486575e432d250553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A93579440800585f5/Variantaf3a328883dce749449331cc2ceed574c2e2a0647126d2878e63317a9b80fe55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48caec3fa2a1d7be12b4a6faa4cf99089cab0366a182cec77c7b0777205395e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A93579440800585f5/Variantaf3a328883dce749449331cc2ceed574c2e2a0647126d2878e63317a9b80fe55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8582c7381920d74c70ddb048cfa631d4a81e5d2dee140db1eba605a98b7f3486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CyclicRotationAction (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] where
  transport : ZMod n → A ≃+ A
  transport_zero : transport 0 = AddEquiv.refl A
  transport_add :
    ∀ r s, transport (r + s) = (transport r).trans (transport s)

namespace TwistedH1

end TwistedH1

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A93579440800585f5/Variantaf3a328883dce749449331cc2ceed574c2e2a0647126d2878e63317a9b80fe55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A93579440800585f5/Variantaf3a328883dce749449331cc2ceed574c2e2a0647126d2878e63317a9b80fe55.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `241ff1d4c55bbed0096f59f486575e432d250553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
