# abs_quadraticPlusOneLocalDiscrepancy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4f689c4-fc31-3f34-a660-3613fab6fc36",
  "kind": "theorem",
  "lexical_name": "abs_quadraticPlusOneLocalDiscrepancy_le",
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
  "slug": "abs-quadraticplusonelocaldiscrepancy-le--814fa943d12b58a657913a62",
  "source": {
    "blob": "bbe7c3452218ba2df97fb4086c983e0a1bbcd741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 240,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814fa943d12b58a657913a6298304de42d1206c649239a5889dc44765e6103df",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4f689c4-fc31-3f34-a660-3613fab6fc36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_quadraticPlusOneLocalDiscrepancy_le
    {d X : ℕ} (hd : 0 < d) :
    |quadraticPlusOneLocalDiscrepancy d X| ≤
      quadraticPlusOneRootCount d := by
  let q := X / d
  let s := X % d
  let r := quadraticPlusOneRootCount d
  let e := quadraticPlusOneCutoffError d X
  have hformula := quadraticPlusOneDivisorCount_formula (X := X) hd
  have he0 : (0 : ℚ) ≤ e := by positivity
  have her : (e : ℚ) ≤ r := by
    exact_mod_cast quadraticPlusOneCutoffError_le_rootCount d X
  have hs0 : (0 : ℚ) ≤ s := by positivity
  have hsd : (s : ℚ) < d := by
    exact_mod_cast Nat.mod_lt X hd
  have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
  have hsr0 : (0 : ℚ) ≤ (s : ℚ) * r / d := by positivity
  have hsr : (s : ℚ) * r / d ≤ r := by
    by_cases hr0 : r = 0
    · simp [hr0]
    · have hrQ : (0 : ℚ) < r := by positivity
      rw [div_le_iff₀ hdQ]
      nlinarith
  have hX : (X : ℚ) = q * d + s := by
    have hnat : X = q * d + s := by
      simpa only [q, s, mul_comm] using (Nat.div_add_mod X d).symm
    exact_mod_cast hnat
  unfold quadraticPlusOneLocalDiscrepancy
    quadraticPlusOneLocalMain
  rw [hformula]
  push_cast
  change |(q : ℚ) * r + e - (X : ℚ) * r / d| ≤ r
  rw [hX]
  have heq : (q : ℚ) * r + e - ((q : ℚ) * d + s) * r / d =
      e - (s : ℚ) * r / d := by
    field_simp [hdQ.ne']
    ring
  rw [heq, abs_le]
  constructor <;> linarith

/-- Modulus one is handled explicitly: every index is a local survivor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe7c3452218ba2df97fb4086c983e0a1bbcd741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
