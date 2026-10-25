# not_exists_sq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1b8faf8-681b-fe2d-f192-c4b8e8aba47d",
  "kind": "theorem",
  "lexical_name": "not_exists_sq'",
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
  "slug": "not-exists-sq--1869f5ab9d5495e1fe85ef1e",
  "source": {
    "blob": "c0b22ccb3bb293061a55e98ef20b07ed2728a5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1869f5ab9d5495e1fe85ef1e42c49a7e7a113afe1109b108ab39873487aafe4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b8faf8-681b-fe2d-f192-c4b8e8aba47d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_exists_sq' {n m : ℕ} (hl : m ^ 2 < n) (hr : n < (m + 1) ^ 2) : ¬∃ t, t ^ 2 = n := by
  simpa only [pow_two] using
    not_exists_sq (by simpa only [pow_two] using hl) (by simpa only [pow_two] using hr)
#align nat.not_exists_sq' Nat.not_exists_sq'

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant6b93f881522aa7209b3820d14a83a7a09a4f51a82f7887a4aeb8e5aed3deae9f.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b22ccb3bb293061a55e98ef20b07ed2728a5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
