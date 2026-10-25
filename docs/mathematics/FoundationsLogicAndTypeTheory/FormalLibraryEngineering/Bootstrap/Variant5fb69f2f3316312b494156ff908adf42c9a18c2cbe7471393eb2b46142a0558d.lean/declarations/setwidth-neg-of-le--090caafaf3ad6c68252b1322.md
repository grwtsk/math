# setWidth_neg_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7cfc478-9f5e-983f-2585-dc8b98720ca2",
  "kind": "theorem",
  "lexical_name": "setWidth_neg_of_le",
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
  "slug": "setwidth-neg-of-le--090caafaf3ad6c68252b1322",
  "source": {
    "blob": "51656aff087292f1234528f5385dc70fd023892e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:090caafaf3ad6c68252b1322308f1049e7ba01103895724bd76d16fc6930d459",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7cfc478-9f5e-983f-2585-dc8b98720ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setWidth_neg_of_le {x : BitVec v} (h : w ≤ v) : BitVec.setWidth w (-x) = -BitVec.setWidth w x := by
  apply BitVec.eq_of_toNat_eq
  simp only [toNat_setWidth, toNat_neg]
  rw [Nat.mod_mod_of_dvd _ (Nat.pow_dvd_pow 2 h)]
  rw [Nat.mod_eq_mod_iff]
  rw [Nat.mod_def]
  refine ⟨1 + x.toNat / 2^w, 2^(v-w), ?_⟩
  rw [← Nat.pow_add]
  have : v - w + w = v := by omega
  rw [this]
  rw [Nat.add_mul, Nat.one_mul, Nat.mul_comm (2^w)]
  have sub_sub : ∀ (a : Nat) {b c : Nat} (h : c ≤ b), a - (b - c) = a + c - b := by omega
  rw [sub_sub _ (Nat.div_mul_le_self x.toNat (2 ^ w))]
  have : x.toNat / 2 ^ w * 2 ^ w ≤ x.toNat := Nat.div_mul_le_self x.toNat (2 ^ w)
  have : x.toNat < 2 ^w ∨ x.toNat - 2 ^ w < x.toNat / 2 ^ w * 2 ^ w := by
    have := Nat.lt_div_mul_add (a := x.toNat) (b := 2 ^ w) (Nat.two_pow_pos w)
    omega
  omega

@[induction_eliminator, elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51656aff087292f1234528f5385dc70fd023892e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
