# invExtended

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f9675b2b296be62c229f086c3685a9bfdc2e99d94a680846540bf1e2d858e30",
  "kind": "def",
  "lexical_name": "invExtended",
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
  "slug": "invextended--740e985df617acf11010606b",
  "source": {
    "blob": "3407862e03ef0fb006b96323c7e78f6fa603fa2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 238,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:740e985df617acf11010606b52d733b51b164fbbad077555064b041fb33a6de2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f9675b2b296be62c229f086c3685a9bfdc2e99d94a680846540bf1e2d858e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invExtended (I : IntervalRat) (large_bound : ℚ := defaultLargeBound) : ExtendedInterval :=
  if hpos : 0 < I.lo then
    -- Case 1: Strictly positive interval [1/hi, 1/lo]
    ExtendedInterval.singleton ⟨1 / I.hi, 1 / I.lo,
      one_div_le_one_div_of_le hpos I.le⟩
  else if hneg : I.hi < 0 then
    -- Case 2: Strictly negative interval [1/hi, 1/lo]
    have hlo_neg : I.lo < 0 := lt_of_le_of_lt I.le hneg
    ExtendedInterval.singleton ⟨1 / I.hi, 1 / I.lo, by
      rw [one_div, one_div]
      exact (inv_le_inv_of_neg hneg hlo_neg).mpr I.le⟩
  else if _hstraddle : I.lo < 0 ∧ 0 < I.hi then
    -- Case 3: Straddles zero → split into two branches
    -- Use mkSafeInterval to guarantee well-formedness
    ⟨[mkSafeInterval (-large_bound) (1 / I.lo),
      mkSafeInterval (1 / I.hi) large_bound]⟩
  else if _hzero_lo : I.lo = 0 ∧ 0 < I.hi then
    -- Case 4: [0, b] with b > 0 → [1/b, ∞)
    ExtendedInterval.singleton (mkSafeInterval (1 / I.hi) large_bound)
  else if _hzero_hi : I.lo < 0 ∧ I.hi = 0 then
    -- Case 5: [a, 0] with a < 0 → (-∞, 1/a]
    ExtendedInterval.singleton (mkSafeInterval (-large_bound) (1 / I.lo))
  else
    -- Case 6: [0, 0] → empty (undefined)
    ExtendedInterval.empty

/-- Soundness of extended inversion: if x ∈ I and x ≠ 0, then 1/x ∈ invExtended I.

    The hypothesis `hlb : |x⁻¹| ≤ large_bound` ensures that 1/x fits within the finite bounds.
    This is the key assumption that makes extended inversion sound - without it, 1/x could
    be arbitrarily large for x close to 0.

    NOTE: This theorem has remaining sorries because the `invExtended` function itself
    has design assumption sorries for interval validity when constructing intervals near zero.
    The membership logic is correct modulo these construction assumptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3407862e03ef0fb006b96323c7e78f6fa603fa2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
