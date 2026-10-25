# fdiv_mul_cancel_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d687bbcc-b3a7-9d6b-3dd6-38cc34d0c1fc",
  "kind": "theorem",
  "lexical_name": "fdiv_mul_cancel_of_dvd",
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
  "slug": "fdiv-mul-cancel-of-dvd--f94660d58adb9314d4b0f395",
  "source": {
    "blob": "5bb2d722bba2a1af48bae7b7869bafe4599eeb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2350,
    "line": 2348,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f94660d58adb9314d4b0f39596f75d6fc5b09357e5874079727f4aaccea16deb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d687bbcc-b3a7-9d6b-3dd6-38cc34d0c1fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2348–2350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fdiv_mul_cancel_of_dvd {a b : Int} (H : b ∣ a) : a.fdiv b * b = a :=
  fdiv_mul_cancel_of_fmod_eq_zero (fmod_eq_zero_of_dvd H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean#L2348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2d722bba2a1af48bae7b7869bafe4599eeb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
