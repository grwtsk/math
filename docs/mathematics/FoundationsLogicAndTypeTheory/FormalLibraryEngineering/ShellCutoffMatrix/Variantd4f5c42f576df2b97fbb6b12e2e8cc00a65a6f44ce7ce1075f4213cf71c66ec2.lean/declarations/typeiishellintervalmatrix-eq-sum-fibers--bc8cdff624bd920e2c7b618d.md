# typeIIShellIntervalMatrix_eq_sum_fibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4841a450-378b-9818-a082-b14cb8c80f6e",
  "kind": "theorem",
  "lexical_name": "typeIIShellIntervalMatrix_eq_sum_fibers",
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
  "slug": "typeiishellintervalmatrix-eq-sum-fibers--bc8cdff624bd920e2c7b618d",
  "source": {
    "blob": "3542d64aa78e88610f4db75760eb38d7fc10594e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc8cdff624bd920e2c7b618d9159538e15abb03bfcfc0f8940d16bbb331f81c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4841a450-378b-9818-a082-b14cb8c80f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeIIShellIntervalMatrix_eq_sum_fibers {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q) :
    typeIIShellIntervalMatrix B D =
      ∑ n ∈ D.carrier,
        productFiberIncrementMatrix
          (fun m : B.Left ↦ m.1.1) (fun k : B.Right ↦ k.1.1) n := by
  exact typeIIProductIntervalMatrix_eq_sum_fibers _ _ D

/-- Exact factor-block cutoff for one shell prefix `(2^q,x]`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShellCutoffMatrix/Variantd4f5c42f576df2b97fbb6b12e2e8cc00a65a6f44ce7ce1075f4213cf71c66ec2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3542d64aa78e88610f4db75760eb38d7fc10594e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
