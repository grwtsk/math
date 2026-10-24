# obstruction_iff_descends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83842103-088d-4d76-28b4-26790bf289a3",
  "kind": "theorem",
  "lexical_name": "obstruction_iff_descends",
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
  "slug": "obstruction-iff-descends--8de9e2622897d537674116da",
  "source": {
    "blob": "99857f53e9a4104f4462ad5e2f0c21048b94df5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de9e2622897d537674116da3236ce61a29bf509c6cd08b8d9f6ceb131b52cfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83842103-088d-4d76-28b4-26790bf289a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem obstruction_iff_descends (t : PrimitiveAdditiveTriple)
    (h16 : 16 ∣ t.a*t.b*t.c) : (c6Shape t : ZMod 8)=2 ↔ Descends t := by
  have hp : toTwo (t.a : ZMod 16)=1 ∨ toTwo (t.b : ZMod 16)=1 := by
    have hsmall : ∀ z : ZMod 2, z≠0 → z=1 := by decide
    rcases t.freyResidueParameters_nonzero 2 with ha|hb
    · exact Or.inl (by simpa only [map_natCast] using hsmall _ ha)
    · exact Or.inr (by simpa only [map_natCast] using hsmall _ hb)
  have hz : (t.a : ZMod 16)*t.b*((t.a : ZMod 16)+t.b)=0 := by
    have h := (ZMod.natCast_eq_zero_iff (t.a*t.b*t.c) 16).mpr h16
    simpa only [Nat.cast_mul,← t.sum_eq,Nat.cast_add] using h
  have ht := residue_table (t.a : ZMod 16) (t.b : ZMod 16) hp hz
  have hc : (t.a : ZMod 16)+t.b=0 ↔ 16 ∣ t.c := by
    rw [← Nat.cast_add,t.sum_eq,ZMod.natCast_eq_zero_iff]
  have hab : (t.a : ZMod 16)*t.b=0 ↔ 16 ∣ t.a*t.b := by
    rw [← Nat.cast_mul,ZMod.natCast_eq_zero_iff]
  have ha : toFour (t.a : ZMod 16)=1 ↔ t.a%4=1 := by
    rw [map_natCast,nat_mod_four]
  have hd : toFour ((t.b : ZMod 16)-t.a)=1 ↔ ((t.b : ℤ)-t.a)%4=1 := by
    rw [map_sub,map_natCast,map_natCast]
    simpa only [Int.cast_sub,Int.cast_natCast] using int_mod_four ((t.b : ℤ)-t.a)
  have hf : toEight (((t.b : ZMod 16)-t.a)*(2*t.a+t.b)*(t.a+2*t.b))=
      (c6Shape t : ZMod 8) := by
    simp only [map_mul,map_sub,map_add,map_ofNat,map_natCast,c6Shape,
      Int.cast_mul,Int.cast_sub,Int.cast_add,Int.cast_ofNat,Int.cast_natCast]
  rw [hf,ha,hd,hc,hab] at ht
  exact ht

/-- Necessity uses an arbitrary ACTUAL minimal change, not either chosen witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99857f53e9a4104f4462ad5e2f0c21048b94df5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
