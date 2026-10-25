# add_mul_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4eb88982-060a-df35-2d35-402d7eefa549",
  "kind": "theorem",
  "lexical_name": "add_mul_limit",
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
  "slug": "add-mul-limit--579da4fd9bff7aff2884670d",
  "source": {
    "blob": "53152e3d4debdab6c3b8e0021e8e4d3dc0b5e47b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 814,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:579da4fd9bff7aff2884670de4e073814037ddf97af99e8a4409e2f749f8ab6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eb88982-060a-df35-2d35-402d7eefa549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_mul_limit {a b c : Ordinal} (ba : b + a = a) (l : IsLimit c) : (a + b) * c = a * c :=
  add_mul_limit_aux ba l fun c' _ => add_mul_succ c' ba

/-! ### Division on ordinals -/


/-- The set in the definition of division is nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant43e0ede7b469914a8c73ce8a75b47eab08e32e468dbee6873b07f140572809cd.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53152e3d4debdab6c3b8e0021e8e4d3dc0b5e47b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
