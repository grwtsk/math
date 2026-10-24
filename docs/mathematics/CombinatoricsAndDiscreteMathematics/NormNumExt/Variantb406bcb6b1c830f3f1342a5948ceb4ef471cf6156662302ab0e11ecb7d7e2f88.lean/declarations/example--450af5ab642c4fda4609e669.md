# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:478e82fad17fda55e64cef587c3dc001d62aa62f732e0e3688849dd0cde8062e",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--450af5ab642c4fda4609e669",
  "source": {
    "blob": "614e7c7b874fe437ced1256d5994542b55d98182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormNumExt/Variantb406bcb6b1c830f3f1342a5948ceb4ef471cf6156662302ab0e11ecb7d7e2f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:450af5ab642c4fda4609e669b16ece0a3f7ab39aa0b3130cb1eb163fdda37800",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormNumExt/Variantb406bcb6b1c830f3f1342a5948ceb4ef471cf6156662302ab0e11ecb7d7e2f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:478e82fad17fda55e64cef587c3dc001d62aa62f732e0e3688849dd0cde8062e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (∏ i in Finset.range 4, ((i+1)^2 : ℕ)) = 576 := by norm_num1
/-
example : (∑ i in Finset.Icc 5 10, (i^2 : ℕ)) = 355 := by norm_num
example : (∑ i in Finset.Ico 5 10, (i^2 : ℕ)) = 255 := by norm_num
example : (∑ i in Finset.Ioc 5 10, (i^2 : ℕ)) = 330 := by norm_num
example : (∑ i in Finset.Ioo 5 10, (i^2 : ℕ)) = 230 := by norm_num
example : (∑ i : ℤ in Finset.Ioo (-5) 5, i^2) = 60 := by norm_num
example (f : ℕ → α) : ∑ i in Finset.mk {0, 1, 2} dec_trivial, f i = f 0 + f 1 + f 2 :=
  by norm_num; ring
-/

-- Combined with other `norm_num` extensions:
/-
example : ∏ i in Finset.range 9, Nat.sqrt (i + 1) = 96 := by norm_num1
example : ∏ i in {1, 4, 9, 16}, Nat.sqrt i = 24 := by norm_num1
example : ∏ i in Finset.Icc 0 8, Nat.sqrt (i + 1) = 96 := by norm_num1

-- Nested operations:
example : ∑ i : Fin 2, ∑ j : Fin 2, ![![0, 1], ![2, 3]] i j = 6 := by norm_num1
-/

end big_operators

section jacobi

-- Jacobi and Legendre symbols

open scoped NumberTheorySymbols

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormNumExt/Variantb406bcb6b1c830f3f1342a5948ceb4ef471cf6156662302ab0e11ecb7d7e2f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormNumExt/Variantb406bcb6b1c830f3f1342a5948ceb4ef471cf6156662302ab0e11ecb7d7e2f88.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `614e7c7b874fe437ced1256d5994542b55d98182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
