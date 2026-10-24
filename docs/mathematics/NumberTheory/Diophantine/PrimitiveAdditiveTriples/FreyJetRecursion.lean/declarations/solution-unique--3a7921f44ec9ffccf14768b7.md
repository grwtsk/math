# solution_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8898447d-daf8-a21b-8e1f-26b0b7c64e6f",
  "kind": "theorem",
  "lexical_name": "solution_unique",
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
  "slug": "solution-unique--3a7921f44ec9ffccf14768b7",
  "source": {
    "blob": "c4319effa7873770a9f40a138ab56f2795c73ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7921f44ec9ffccf14768b7c59448b298c318325f5e9689c851a946390e79f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8898447d-daf8-a21b-8e1f-26b0b7c64e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solution_unique (d j h e z w : A) (hdj : d * j = 1)
    (hz0 : e ∣ z) (hw0 : e ∣ w)
    (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2)
    (hw : d * w + h * w ^ 2 + w ^ 3 = e ^ 2)
    (N : ℕ) (he : e ^ N = 0) : z = w := by
  have hz2 := solution_square_dvd d j h e z hdj hz0 hz
  have hw2 := solution_square_dvd d j h e w hdj hw0 hw
  have hzf := solution_fixed d j h e z hdj hz
  have hwf := solution_fixed d j h e w hdj hw
  have hprec : ∀ n : ℕ, e ^ (2 * n) ∣ z - w := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      have hh := step_gain_two j h e z w (2 * n) hz2 hw2 ih
      rw [hzf, hwf] at hh
      simpa only [Nat.mul_add, Nat.mul_one] using hh
  have he2 : e ^ (2 * N) = 0 := by
    calc
      e ^ (2 * N) = e ^ N * e ^ N := by
        rw [← pow_add]
        congr 1
        omega
      _ = 0 := by rw [he, zero_mul]
  have hz0' : z - w = 0 := by simpa only [he2, zero_dvd_iff] using hprec N
  exact sub_eq_zero.mp hz0'

/-- A larger power also vanishes. No characteristic or reducedness assumption is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4319effa7873770a9f40a138ab56f2795c73ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
