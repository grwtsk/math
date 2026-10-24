# bad_prime_localization_is_bad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11ab480e-3c8c-e781-c1f6-37d62d699d48",
  "kind": "theorem",
  "lexical_name": "bad_prime_localization_is_bad",
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
  "slug": "bad-prime-localization-is-bad--08b91cabd45cb40e13322455",
  "source": {
    "blob": "9ba0a5da236daf7fda3ea3b79809711142b0e0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant9799d532e15c83acc49cb109f8c149d0b51ab9925aa71949d621bb166e75ea9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08b91cabd45cb40e13322455f5a8f9f06cef899f89e8bfae218b514fc111fbd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant9799d532e15c83acc49cb109f8c149d0b51ab9925aa71949d621bb166e75ea9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11ab480e-3c8c-e781-c1f6-37d62d699d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bad_prime_localization_is_bad
    (L : BadPrimeTMFLocalization) :
    L.p = 2 ∨ L.p = 3 :=
  L.bad

end AdelicInfinityTopos
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant9799d532e15c83acc49cb109f8c149d0b51ab9925aa71949d621bb166e75ea9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/BadPrimeLocalization/Variant9799d532e15c83acc49cb109f8c149d0b51ab9925aa71949d621bb166e75ea9d.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba0a5da236daf7fda3ea3b79809711142b0e0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
