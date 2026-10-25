# neg_fdiv_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e34c108-b300-4f0d-3e5b-c2567bf71d43",
  "kind": "theorem",
  "lexical_name": "neg_fdiv_neg",
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
  "slug": "neg-fdiv-neg--a527e4592b1a8440bdbbbcd3",
  "source": {
    "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2107,
    "line": 2083,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a527e4592b1a8440bdbbbcd33eb418d4458e6ecd3cff0cf9d5e9974612b67bf7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e34c108-b300-4f0d-3e5b-c2567bf71d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2083–2107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] protected theorem neg_fdiv_neg (a b : Int) : (-a).fdiv (-b) = a.fdiv b := by
  match a, b with
  | 0, 0 => rfl
  | 0, ofNat b => simp
  | 0, -[b+1] => simp
  | ofNat (a + 1), 0 => simp
  | ofNat (a + 1), ofNat (b + 1) =>
    unfold fdiv
    simp only [ofNat_eq_natCast, Int.natCast_add, cast_ofNat_Int, Nat.succ_eq_add_one]
    rw [← negSucc_eq, ← negSucc_eq]
  | ofNat (a + 1), -[b+1] =>
    unfold fdiv
    simp only [ofNat_eq_natCast, Int.natCast_add, cast_ofNat_Int, Nat.succ_eq_add_one]
    rw [← negSucc_eq, neg_negSucc]
  | -[a+1], 0 => simp
  | -[a+1], ofNat (b + 1) =>
    unfold fdiv
    simp only [ofNat_eq_natCast, Int.natCast_add, cast_ofNat_Int, Nat.succ_eq_add_one]
    rw [neg_negSucc, ← negSucc_eq]
  | -[a+1], -[b+1] =>
    unfold fdiv
    simp only [ofNat_eq_natCast, natCast_ediv, Nat.succ_eq_add_one, Int.natCast_add, cast_ofNat_Int]
    rw [neg_negSucc, neg_negSucc]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean#L2083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ebb630e4fed7809bcfdbf55fb7e74173327aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
