# embedProduct_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e907834-2e7c-1b8c-cdb0-4e791c21647a",
  "kind": "theorem",
  "lexical_name": "embedProduct_injective",
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
  "slug": "embedproduct-injective--d06d65d7139e4ffe385c08b5",
  "source": {
    "blob": "1fb3d04959d109bd64532c6910454f96a2343822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 657,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variantedc57eba8880d7c90fef8e707aa59c857884a8b0063ecf4f162f451f93f6ea75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d06d65d7139e4ffe385c08b5498af3b1497427a0b1fba87fd5dbb59b537384e7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variantedc57eba8880d7c90fef8e707aa59c857884a8b0063ecf4f162f451f93f6ea75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e907834-2e7c-1b8c-cdb0-4e791c21647a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedProduct_injective (α : Type*) [Monoid α] : Function.Injective (embedProduct α) :=
  fun _ _ h => Units.ext <| (congr_arg Prod.fst h :)

end Units

/-! ### Multiplication and division as homomorphisms -/


section BundledMulDiv

variable {α : Type*}

/-- Multiplication as a multiplicative homomorphism. -/
@[to_additive (attr := simps) /-- Addition as an additive homomorphism. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variantedc57eba8880d7c90fef8e707aa59c857884a8b0063ecf4f162f451f93f6ea75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variantedc57eba8880d7c90fef8e707aa59c857884a8b0063ecf4f162f451f93f6ea75.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb3d04959d109bd64532c6910454f96a2343822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
