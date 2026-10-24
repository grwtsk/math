# withSign.not_internal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5000c924-fc8e-d355-1c55-1feed5f99d94",
  "kind": "theorem",
  "lexical_name": "withSign.not_internal",
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
  "slug": "withsign-not-internal--1b802bee34696cb4310a2763",
  "source": {
    "blob": "baaea27820ea62b182d66a2fb3599f0ffcf451c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b802bee34696cb4310a2763705af2f5310cbbb968a40125e9fcf27da313a7c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5000c924-fc8e-d355-1c55-1feed5f99d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withSign.not_internal : ¬DirectSum.IsInternal withSign :=
  withSign.not_injective ∘ And.left

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variantd26f30321fcb149b78338e9524332fbe15d8a3934ba4692eca47212d35ff6c64.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baaea27820ea62b182d66a2fb3599f0ffcf451c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
