# ofIntervalRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:865bec93092485cc0932a5b45a4f4204d9abd9307196a1631c83315bc0bbc5d1",
  "kind": "def",
  "lexical_name": "ofIntervalRat",
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
  "slug": "ofintervalrat--815e6cab90bb3cda96be22f9",
  "source": {
    "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 571,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:815e6cab90bb3cda96be22f9e876ecaa1a4ee640fbbbab0c15122624795e0436",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:865bec93092485cc0932a5b45a4f4204d9abd9307196a1631c83315bc0bbc5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIntervalRat (I : IntervalRat) (prec : Int := -53) : IntervalDyadic :=
  -- Convert Rat endpoints to Dyadic with outward rounding
  -- For simplicity, we use a conservative conversion
  let lo := Dyadic.ofInt (Int.floor (I.lo * (2 ^ (-prec).toNat)))
  let loD := lo.scale2 prec
  let hi := Dyadic.ofInt (Int.ceil (I.hi * (2 ^ (-prec).toNat)))
  let hiD := hi.scale2 prec
  ⟨loD, hiD, by
    -- Need: loD.toRat ≤ hiD.toRat
    -- loD.toRat = floor(I.lo * 2^n) * 2^prec
    -- hiD.toRat = ceil(I.hi * 2^n) * 2^prec
    -- This follows from: floor(I.lo * 2^n) ≤ ceil(I.hi * 2^n)
    -- Which is: floor(I.lo * 2^n) ≤ I.lo * 2^n ≤ I.hi * 2^n ≤ ceil(I.hi * 2^n)
    apply Dyadic.toRat_scale2_le_scale2
    rw [Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]
    have hle : I.lo ≤ I.hi := I.le
    have hscale_pos : (0 : ℚ) < (2 : ℚ) ^ (-prec).toNat := pow_pos (by norm_num : (0 : ℚ) < 2) _
    calc (⌊I.lo * (2 : ℚ) ^ (-prec).toNat⌋ : ℚ)
        ≤ I.lo * (2 : ℚ) ^ (-prec).toNat := Int.floor_le _
      _ ≤ I.hi * (2 : ℚ) ^ (-prec).toNat := mul_le_mul_of_nonneg_right hle (le_of_lt hscale_pos)
      _ ≤ ⌈I.hi * (2 : ℚ) ^ (-prec).toNat⌉ := Int.le_ceil _⟩

/-- If x ∈ IntervalRat I, then x ∈ ofIntervalRat I prec (outward rounding preserves membership).
    Requires precision ≤ 0 (e.g. -53). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77f3102dc0f912b0389995fefcaf7161365b344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
