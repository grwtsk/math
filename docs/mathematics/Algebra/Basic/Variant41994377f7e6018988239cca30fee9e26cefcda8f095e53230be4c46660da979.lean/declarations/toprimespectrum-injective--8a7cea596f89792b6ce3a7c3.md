# toPrimeSpectrum_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc91ef72f56f72e5f8b8ba2116ad538df8a99c27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37e0816b-f6f2-b8e5-88d4-ab9618d801a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a69ba1c9-d533-9ea9-b83a-02d0e133c0cd",
  "kind": "theorem",
  "lexical_name": "toPrimeSpectrum_injective",
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
  "slug": "toprimespectrum-injective--8a7cea596f89792b6ce3a7c3",
  "source": {
    "blob": "dc91ef72f56f72e5f8b8ba2116ad538df8a99c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 44,
    "path": "GRWTSK/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a7cea596f89792b6ce3a7c3890d8e328febc3f8f3a20537146c5da46fa8831c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a69ba1c9-d533-9ea9-b83a-02d0e133c0cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPrimeSpectrum_injective : (@toPrimeSpectrum R _).Injective := fun ⟨_, _⟩ ⟨_, _⟩ h => by
  simpa only [MaximalSpectrum.mk.injEq] using PrimeSpectrum.ext_iff.mp h

end MaximalSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc91ef72f56f72e5f8b8ba2116ad538df8a99c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
