# zpow₀_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee6fcc1a-aa4b-fd0d-ee46-7c517cc9ee72",
  "kind": "theorem",
  "lexical_name": "zpow₀_def",
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
  "slug": "zpow-def--4ecd610dc46bc437caabdd7b",
  "source": {
    "blob": "be118d425ec298978c160bf4a00e64f50566d4ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 238,
    "path": "GRWTSK/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ecd610dc46bc437caabdd7b45806b1f4b38cef0ef728d6ad8eb72c3a8ff8964",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee6fcc1a-aa4b-fd0d-ee46-7c517cc9ee72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow₀_def (i x) (n : ℤ) : ⟦⟨i, x⟩⟧ ^ n = (⟦⟨i, x ^ n⟩⟧ : DirectLimit G f) := rfl

end GroupWithZero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be118d425ec298978c160bf4a00e64f50566d4ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
