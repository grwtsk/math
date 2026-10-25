# exists_analytical_not_arithmetical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:650b4390-8cc5-7b69-c956-fdbe6ea29d6c",
  "kind": "theorem",
  "lexical_name": "exists_analytical_not_arithmetical",
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
  "slug": "exists-analytical-not-arithmetical--89ea6be81ddf08de01bc5382",
  "source": {
    "blob": "c5a7c4f0fe0db5d4784465e3244e50525133e4bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ea6be81ddf08de01bc538231ac9de8a61e47df92dcba70c338c351b80619d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:650b4390-8cc5-7b69-c956-fdbe6ea29d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_analytical_not_arithmetical :
    StrictnessUnavailableAuthority "exists_analytical_not_arithmetical" :=
  True.intro

end ExpressibleNumbers
end AnalyticNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5a7c4f0fe0db5d4784465e3244e50525133e4bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
