# FactorsHelper.primeFactorsList_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694915a8-8a39-b92f-dcdf-37a2b65efa27",
  "kind": "theorem",
  "lexical_name": "FactorsHelper.primeFactorsList_eq",
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
  "slug": "factorshelper-primefactorslist-eq--7225dadb3a29ee23c2b33ad2",
  "source": {
    "blob": "8c28ebffc91dcef92a8326a471bddcae99eebc1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant34a15442e33a72c7c3b2bffd80a161a242d6e7bdf029b32e6566c309343786b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7225dadb3a29ee23c2b33ad2887abedb1689f2fc5ca3e01af548f4e319d134e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant34a15442e33a72c7c3b2bffd80a161a242d6e7bdf029b32e6566c309343786b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694915a8-8a39-b92f-dcdf-37a2b65efa27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FactorsHelper.primeFactorsList_eq {n : ℕ} {l : List ℕ} (H : FactorsHelper n 2 l) :
    Nat.primeFactorsList n = l :=
  let ⟨h₁, h₂, h₃⟩ := H Nat.prime_two
  have := List.isChain_iff_pairwise.1 (@List.IsChain.tail _ _ (_ :: _) h₁)
  ((Nat.primeFactorsList_unique h₃ h₂).eq_of_pairwise'
     this (Nat.primeFactorsList_sorted _).pairwise).symm

open Lean Elab Tactic Qq

/-- Given `n` and `a` (in expressions `en` and `ea`) corresponding to literal numerals
(in `enl` and `eal`), returns `(l, ⊢ factorsHelper n a l)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant34a15442e33a72c7c3b2bffd80a161a242d6e7bdf029b32e6566c309343786b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factors/Variant34a15442e33a72c7c3b2bffd80a161a242d6e7bdf029b32e6566c309343786b6.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c28ebffc91dcef92a8326a471bddcae99eebc1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
