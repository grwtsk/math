# lawful_divSubtractShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:683a0d1a-831c-f192-089a-6b1a91fc3737",
  "kind": "theorem",
  "lexical_name": "lawful_divSubtractShift",
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
  "slug": "lawful-divsubtractshift--90e58fb5a62f9681211ca102",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1062,
    "line": 1015,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e58fb5a62f9681211ca102db1d39964d9a4ed809ad670306c819e59cacd040",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:683a0d1a-831c-f192-089a-6b1a91fc3737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1015–1062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lawful_divSubtractShift (qr : DivModState w) (h : qr.Poised args) :
    DivModState.Lawful args (divSubtractShift args qr) := by
  rcases args with ⟨n, d⟩
  simp only [divSubtractShift]
  -- We add these hypotheses for `omega` to find them later.
  have ⟨⟨hrwn, hd, hrd, hr, hn, hrnd⟩, hwn_lt⟩ := h
  have : d.toNat * (qr.q.toNat * 2) = d.toNat * qr.q.toNat * 2 := by rw [Nat.mul_assoc]
  by_cases rltd : shiftConcat qr.r (n.getLsbD (qr.wn - 1)) < d
  · simp only [rltd, ↓reduceIte]
    constructor <;> try bv_omega
    case pos.hrWidth => apply toNat_shiftConcat_lt_of_lt <;> omega
    case pos.hqWidth => apply toNat_shiftConcat_lt_of_lt <;> omega
    case pos.hdiv =>
      simp [qr.toNat_shiftRight_sub_one_eq h, h.hdiv, this,
        toNat_shiftConcat_eq_of_lt (qr.wr_lt_w h) h.hrWidth,
        toNat_shiftConcat_eq_of_lt (qr.wr_lt_w h) h.hqWidth]
      omega
  · simp only [rltd, ↓reduceIte]
    constructor <;> try bv_omega
    case neg.hrLtDivisor =>
      simp only [lt_def, Nat.not_lt] at rltd
      rw [BitVec.toNat_sub_of_le rltd,
        toNat_shiftConcat_eq_of_lt (hk := qr.wr_lt_w h) (hx := h.hrWidth),
        Nat.mul_comm]
      apply two_mul_add_sub_lt_of_lt_of_lt_two <;> bv_omega
    case neg.hrWidth =>
      simp only
      have hdr' : d ≤ (qr.r.shiftConcat (n.getLsbD (qr.wn - 1))) :=
        BitVec.not_lt.mp rltd
      have hr' : ((qr.r.shiftConcat (n.getLsbD (qr.wn - 1)))).toNat < 2 ^ (qr.wr + 1) := by
        apply toNat_shiftConcat_lt_of_lt <;> bv_omega
      rw [BitVec.toNat_sub_of_le hdr']
      omega
    case neg.hqWidth =>
      apply toNat_shiftConcat_lt_of_lt <;> omega
    case neg.hdiv =>
      have rltd' := (BitVec.not_lt.mp rltd)
      simp only [qr.toNat_shiftRight_sub_one_eq h,
        BitVec.toNat_sub_of_le rltd',
        toNat_shiftConcat_eq_of_lt (qr.wr_lt_w h) h.hrWidth]
      simp only [BitVec.le_def,
        toNat_shiftConcat_eq_of_lt (qr.wr_lt_w h) h.hrWidth] at rltd'
      simp only [toNat_shiftConcat_eq_of_lt (qr.wr_lt_w h) h.hqWidth, h.hdiv, Nat.mul_add]
      bv_omega

/-! ### Core division algorithm circuit -/

/-- A recursive definition of division for bit blasting, in terms of a shift-subtraction circuit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L1015).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
