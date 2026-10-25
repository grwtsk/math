# negSucc_emod_negSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:598d5cb9-6eb4-690f-2f8e-728292339ab3",
  "kind": "theorem",
  "lexical_name": "negSucc_emod_negSucc",
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
  "slug": "negsucc-emod-negsucc--8d8656d9ef03da4d9f80b3e3",
  "source": {
    "blob": "bd2d2dfa53779352fb61e70286aaee77372692cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d8656d9ef03da4d9f80b3e3407c74e2731b5b97e2780bed5a0b089e3948e57d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:598d5cb9-6eb4-690f-2f8e-728292339ab3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negSucc_emod_negSucc {a b : Nat} : -[a+1] % -[b+1] = subNatNat (b + 1) (succ (a % (b + 1))) := rfl

/--
Division of two divisible integers. Division by `0` returns `0`.

This operation uses an optimized implementation, specialized for two divisible integers.

This function is overridden at runtime with an efficient implementation. This definition is
the logical model.

Examples:
 * `Int.divExact 21 3 (by decide) = 7`
 * `Int.divExact 21 (-3) (by decide) = -7`
 * `Int.divExact (-15) 5 (by decide) = -3`
 * `Int.divExact 0 22 (by decide) = 0`
 * `Int.divExact 0 0 (by decide) = 0`
-/
@[extern "lean_int_div_exact"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant47635f2f2500a8ea2347bae1f43b1d84b9708a621361d73822b1c3bb6fa8feda.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd2d2dfa53779352fb61e70286aaee77372692cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
