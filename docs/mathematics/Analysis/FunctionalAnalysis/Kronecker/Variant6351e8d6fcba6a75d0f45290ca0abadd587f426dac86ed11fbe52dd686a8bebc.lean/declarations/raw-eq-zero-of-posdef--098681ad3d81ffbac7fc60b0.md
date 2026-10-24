# raw_eq_zero_of_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88aad76501255337703dc921fdc8466326cf0f7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad7a9dc0-a08e-3b13-eb0d-cfee947071dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9ac83db-19d2-f051-b64c-8ba176f7ed98",
  "kind": "theorem",
  "lexical_name": "raw_eq_zero_of_posDef",
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
  "slug": "raw-eq-zero-of-posdef--098681ad3d81ffbac7fc60b0",
  "source": {
    "blob": "88aad76501255337703dc921fdc8466326cf0f7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 27,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:098681ad3d81ffbac7fc60b0a739faabde41c7d46e7998b1480230a2cfdf6d8c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9ac83db-19d2-f051-b64c-8ba176f7ed98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_eq_zero_of_posDef
    (kernel : Kernel.PositiveKernel Index)
    (positiveDefinite : kernel.matrix.PosDef)
    {f : Raw kernel}
    (energyZero : Raw.inner kernel f f = 0) :
    f = 0 := by
  by_contra nonzero
  have positiveEnergy := positiveDefinite.2 nonzero
  change 0 < Raw.inner kernel f f at positiveEnergy
  rw [energyZero] at positiveEnergy
  exact (lt_irrefl (0 : ℂ)) positiveEnergy

/-- A positive-definite kernel has an injective canonical feature map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant6351e8d6fcba6a75d0f45290ca0abadd587f426dac86ed11fbe52dd686a8bebc.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88aad76501255337703dc921fdc8466326cf0f7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
