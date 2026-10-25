# Inv1.property

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b8cce8-51dc-cc1d-2fa0-6c4546539bc3",
  "kind": "theorem",
  "lexical_name": "Inv1.property",
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
  "slug": "inv1-property--fa18aea0a6d4a3b956cb5a2c",
  "source": {
    "blob": "a1e3e1dc57df37fd7c31ab45f796cf68c31e806b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa18aea0a6d4a3b956cb5a2c6dfcb05a8ad5a464a45eaf8e12888350dccda68c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b8cce8-51dc-cc1d-2fa0-6c4546539bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inv1.property [EquivBEq α] {n m : Nat} (x y : α) (map : HashMap α Nat) (hinv : Inv1 n map)
    (hfound1 : map[x]? = some m) (hfound2 : map[y]? = some m) : x = y := by
  induction hinv with
  | empty => simp at hfound1
  | insert ih1 _ih2 ih3 =>
    rename_i z
    rw [HashMap.getElem?_insert] at hfound1
    rw [HashMap.getElem?_insert] at hfound2
    match hx : z == x with
    | false =>
      simp only [beq_eq_false_iff_ne, ne_eq] at hx
      simp only [beq_iff_eq, hx, ↓reduceIte] at hfound1
      match hy : z == y with
      | false =>
        simp only [beq_eq_false_iff_ne, ne_eq] at hy
        simp only [beq_iff_eq, hy, ↓reduceIte] at hfound2
        exact ih3 hfound1 hfound2
      | true =>
        simp only [hy, ↓reduceIte, Option.some.injEq] at hfound2
        have := Inv1.lt_of_get?_eq_some _ _ ih1 hfound1
        omega
    | true =>
      simp only [hx, ↓reduceIte, Option.some.injEq] at hfound1
      rcases hfound1 with ⟨rfl⟩
      match hy : z == y with
      | false =>
        simp only [beq_eq_false_iff_ne, ne_eq] at hy
        simp only [beq_iff_eq, hy, ↓reduceIte] at hfound2
        have := Inv1.lt_of_get?_eq_some _ _ ih1 hfound2
        omega
      | true =>
        simp only [beq_iff_eq] at hx hy
        simp only [←hx, hy]

/--
This invariant says that we have already visited and inserted all nodes up to a certain index.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelabelNat/Variant18433a9eaed4051a0b5457bc7e44c4bd7d453670aace254ac92b31517569c79e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1e3e1dc57df37fd7c31ab45f796cf68c31e806b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
