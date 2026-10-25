# sign_neg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:096e8e2a-98cf-b4e7-b9cc-8df149b50c44",
  "kind": "theorem",
  "lexical_name": "sign_neg_iff",
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
  "slug": "sign-neg-iff--310fa43d99e80e0d750e400b",
  "source": {
    "blob": "a85f97229f1cc38183471a18f15b4b1ce06cde48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1392,
    "line": 1387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:310fa43d99e80e0d750e400b403e65cfe9b095ecfe9c69924240ddbfeeab8ab5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:096e8e2a-98cf-b4e7-b9cc-8df149b50c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1387–1392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem sign_neg_iff : sign x < 0 ↔ x < 0 := by
  match x with
  | 0 => simp
  | .ofNat (_ + 1) => simpa using le.intro_sub _ rfl
  | .negSucc _ => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant4acefd7f9ff7667abba8dee9d5b04e58a6e23840759c0c41bab97a1c62cc1874.lean#L1387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85f97229f1cc38183471a18f15b4b1ce06cde48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
