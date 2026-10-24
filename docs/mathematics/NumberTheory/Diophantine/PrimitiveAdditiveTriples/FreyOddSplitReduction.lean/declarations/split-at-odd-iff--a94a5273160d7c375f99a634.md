# split_at_odd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3842491f-fcbe-db57-81e5-b8206cb82910",
  "kind": "theorem",
  "lexical_name": "split_at_odd_iff",
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
  "slug": "split-at-odd-iff--a94a5273160d7c375f99a634",
  "source": {
    "blob": "2cfb369566b977c643a8c676df4812d5be08fc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94a5273160d7c375f99a634fc10486c45ff1fc6d5fda15e0cef9d054e101014",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3842491f-fcbe-db57-81e5-b8206cb82910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_at_odd_iff (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      (p ∣ t.a ∧ ∃ r : ZMod p, r^2 = (t.b : ZMod p)) ∨
      (p ∣ t.b ∧ ∃ r : ZMod p, r^2 = -(t.a : ZMod p)) ∨
      (p ∣ t.c ∧ ∃ r : ZMod p, r^2 = (t.a : ZMod p)) := by
  constructor
  · intro h
    have hp : p.Prime := Fact.out
    have hd := (multiplicative_iff_at_odd_prime t p hp2).mp h.toHasMultiplicativeReduction
    rcases hp.dvd_mul.mp hd with hab | hc
    · rcases hp.dvd_mul.mp hab with ha | hb
      · exact Or.inl ⟨ha, (split_iff_of_dvd_a t p hp2 ha).mp h⟩
      · exact Or.inr (Or.inl ⟨hb, (split_iff_of_dvd_b t p hp2 hb).mp h⟩)
    · exact Or.inr (Or.inr ⟨hc, (split_iff_of_dvd_c t p hp2 hc).mp h⟩)
  · rintro (⟨ha, h⟩ | ⟨hb, h⟩ | ⟨hc, h⟩)
    · exact (split_iff_of_dvd_a t p hp2 ha).mpr h
    · exact (split_iff_of_dvd_b t p hp2 hb).mpr h
    · exact (split_iff_of_dvd_c t p hp2 hc).mpr h

/-- The node calculation is on the literal old residue curve and its actual first jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb369566b977c643a8c676df4812d5be08fc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
