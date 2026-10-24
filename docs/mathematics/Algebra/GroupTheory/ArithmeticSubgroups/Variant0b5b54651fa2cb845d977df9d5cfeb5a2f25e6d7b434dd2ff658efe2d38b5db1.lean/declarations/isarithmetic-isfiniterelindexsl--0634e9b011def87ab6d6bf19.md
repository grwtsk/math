# IsArithmetic.isFiniteRelIndexSL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:634557ad11590e14a7345e3c60dfd2e738d0a489483f44354e5282c64ac11b94",
  "kind": "instance",
  "lexical_name": "IsArithmetic.isFiniteRelIndexSL",
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
  "slug": "isarithmetic-isfiniterelindexsl--0634e9b011def87ab6d6bf19",
  "source": {
    "blob": "3ad57a877256f4ef21aa996394fdd345a7b57e7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 132,
    "path": "GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0634e9b011def87ab6d6bf19c40ec919e4e44505913a872ed68e50192bf92f22",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:634557ad11590e14a7345e3c60dfd2e738d0a489483f44354e5282c64ac11b94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsArithmetic.isFiniteRelIndexSL (𝒢 : Subgroup (GL (Fin 2) ℝ)) [IsArithmetic 𝒢] :
    𝒢.IsFiniteRelIndex 𝒮ℒ :=
  ⟨is_commensurable.1.relIndex_ne_zero⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad57a877256f4ef21aa996394fdd345a7b57e7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
