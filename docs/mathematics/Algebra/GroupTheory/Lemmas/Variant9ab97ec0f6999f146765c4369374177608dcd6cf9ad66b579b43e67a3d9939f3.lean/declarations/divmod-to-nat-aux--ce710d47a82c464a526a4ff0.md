# divMod_to_nat_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:143e1ef1-0f22-32ce-b88b-dc9c2c1afc86",
  "kind": "theorem",
  "lexical_name": "divMod_to_nat_aux",
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
  "slug": "divmod-to-nat-aux--ce710d47a82c464a526a4ff0",
  "source": {
    "blob": "ed9cd05b0d6215815483183966866258d6232aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1607,
    "line": 1588,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce710d47a82c464a526a4ff0907b3b26f348323e523221d5f61db66a948d16e1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:143e1ef1-0f22-32ce-b88b-dc9c2c1afc86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1588–1607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divMod_to_nat_aux {n d : PosNum} {q r : Num} (h₁ : (r : ℕ) + d * _root_.bit0 (q : ℕ) = n)
    (h₂ : (r : ℕ) < 2 * d) :
    ((divModAux d q r).2 + d * (divModAux d q r).1 : ℕ) = ↑n ∧ ((divModAux d q r).2 : ℕ) < d := by
  unfold divModAux
  have : ∀ {r₂}, Num.ofZNum' (Num.sub' r (Num.pos d)) = some r₂ ↔ (r : ℕ) = r₂ + d := by
    intro r₂
    apply Num.mem_ofZNum'.trans
    rw [← ZNum.to_int_inj, Num.cast_toZNum, Num.cast_sub', sub_eq_iff_eq_add, ← Int.coe_nat_inj']
    simp
  cases' e : Num.ofZNum' (Num.sub' r (Num.pos d)) with r₂ <;> simp [divModAux]
  · refine' ⟨h₁, lt_of_not_ge fun h => _⟩
    cases' Nat.le.dest h with r₂ e'
    rw [← Num.to_of_nat r₂, add_comm] at e'
    cases e.symm.trans (this.2 e'.symm)
  · have := this.1 e
    constructor
    · rwa [_root_.bit1, add_comm _ 1, mul_add, mul_one, ← add_assoc, ← this]
    · rwa [this, two_mul, add_lt_add_iff_right] at h₂
#align pos_num.divmod_to_nat_aux PosNum.divMod_to_nat_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean#L1588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9cd05b0d6215815483183966866258d6232aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
