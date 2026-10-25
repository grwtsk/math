# instForall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c24060f8646e7924df2a9d5661627743215b4e8363f8bfefa0b98552a8c0b589",
  "kind": "instance",
  "lexical_name": "instForall",
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
  "slug": "instforall--2c153c2b47bcd9a73c0e536c",
  "source": {
    "blob": "15b3375ff0df90c69ac361cf1919ca9ccf60b9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c153c2b47bcd9a73c0e536cf003ebb232e10e892d755b2c1c16c791c922ef4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c24060f8646e7924df2a9d5661627743215b4e8363f8bfefa0b98552a8c0b589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] instance instForall {ι} (G : ι → Type*) [∀ i, Mul (G i)] [∀ i, UniqueProds (G i)] :
    UniqueProds (∀ i, G i) where
  uniqueMul_of_nonempty {A} := by
    classical
    let _ := isWellFounded_ssubset (α := ∀ i, G i) -- why need this?
    apply IsWellFounded.induction (· ⊂ ·) A; intro A ihA B hA
    apply IsWellFounded.induction (· ⊂ ·) B; intro B ihB hB
    by_cases hc : #A ≤ 1 ∧ #B ≤ 1
    · exact of_card_le_one hA hB hc.1 hc.2
    simp_rw [not_and_or, not_le] at hc
    obtain ⟨i, hc⟩ := exists_or.mpr (hc.imp exists_of_one_lt_card_pi exists_of_one_lt_card_pi)
    obtain ⟨ai, hA, bi, hB, hi⟩ := uniqueMul_of_nonempty (hA.image (· i)) (hB.image (· i))
    rw [mem_image, ← filter_nonempty_iff] at hA hB
    let A' := {a ∈ A | a i = ai}; let B' := {b ∈ B | b i = bi}
    obtain ⟨a0, ha0, b0, hb0, hu⟩ : ∃ a0 ∈ A', ∃ b0 ∈ B', UniqueMul A' B' a0 b0 := by
      rcases hc with hc | hc; · exact ihA A' (hc.2 ai) hA hB
      by_cases hA' : A' = A
      · rw [hA']
        exact ihB B' (hc.2 bi) hB
      · exact ihA A' ((A.filter_subset _).ssubset_of_ne hA') hA hB
    rw [mem_filter] at ha0 hb0
    exact ⟨a0, ha0.1, b0, hb0.1, of_image_filter (Pi.evalMulHom G i) ha0.2 hb0.2 hi hu⟩

open ULift in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta46d12ed445e414de77d572c6f91c1b220cfb630cf4a81a2337e0a76aa3a12d2.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b3375ff0df90c69ac361cf1919ca9ccf60b9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
