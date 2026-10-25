# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8178fff067c60fc24641b65a84ea4a1e71cbe0c8a3e7d4d094d907b2e39ba780",
  "kind": "instance",
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
  "slug": "instance--e984e152adc158fae95be2d3",
  "source": {
    "blob": "ab0c50968648a10ba6021e69db2c9f2bc610af17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e984e152adc158fae95be2d31c12d0ebba49b96e8b891551bd58365d2e27074f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8178fff067c60fc24641b65a84ea4a1e71cbe0c8a3e7d4d094d907b2e39ba780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : KleeneAlgebra (Language α) where
  __ : OrderBot (Language α) := inferInstance
  one_le_kstar a _ hl := ⟨[], hl, by simp⟩
  mul_kstar_le_kstar a := (one_add_self_mul_kstar_eq_kstar a).le.trans' le_sup_right
  kstar_mul_le_kstar a := (one_add_kstar_mul_self_eq_kstar a).le.trans' le_sup_right
  kstar_mul_le_self l m h := by
    rw [kstar_eq_iSup_pow, iSup_mul]
    refine iSup_le fun n ↦ ?_
    induction n with
    | zero => simp
    | succ n ih => grw [pow_succ, mul_assoc, h, ih]
  mul_kstar_le_self l m h := by
    rw [kstar_eq_iSup_pow, mul_iSup]
    refine iSup_le fun n ↦ ?_
    induction n with
    | zero => simp
    | succ n ih => grw [pow_succ, ← mul_assoc m (l ^ n) l, ih, h]

/-- **Arden's lemma** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variantdf1bcd176d2d13dafef7fc1965a4f45480666c78d938a588d9e9df9f5b15d24b.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab0c50968648a10ba6021e69db2c9f2bc610af17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
