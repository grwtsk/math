# exists_root_C_mul_X_pow_add_C_mul_X_add_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b06e6e85-46fd-eef5-2fb2-d5fa1ac0b4f9",
  "kind": "theorem",
  "lexical_name": "exists_root_C_mul_X_pow_add_C_mul_X_add_C",
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
  "slug": "exists-root-c-mul-x-pow-add-c-mul-x-add-c--f44396efd580af2fd4ba8b26",
  "source": {
    "blob": "03c0065f44cc517ece88df6ea876d1768b0d32fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44396efd580af2fd4ba8b268189625e9646a0d448fd2e42f9c6dfb483624096",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b06e6e85-46fd-eef5-2fb2-d5fa1ac0b4f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_root_C_mul_X_pow_add_C_mul_X_add_C
    [IsSepClosed k] {n : ℕ} (a b c : k) (hn : (n : k) = 0) (hn' : 2 ≤ n) (hb : b ≠ 0) :
    ∃ x, a * x ^ n + b * x + c = 0 := by
  let f : k[X] := C a * X ^ n + C b * X + C c
  have hdeg : f.degree ≠ 0 := degree_ne_of_natDegree_ne <| by
    by_cases ha : a = 0
    · suffices f.natDegree = 1 from this ▸ one_ne_zero
      simp_rw [f, ha, map_zero, zero_mul, zero_add]
      compute_degree!
    · suffices f.natDegree = n from this ▸ (lt_of_lt_of_le zero_lt_two hn').ne'
      simp_rw [f]
      have h0 : n ≠ 0 := by linarith only [hn']
      have h1 : n ≠ 1 := by linarith only [hn']
      have : 1 ≤ n := le_trans one_le_two hn'
      compute_degree!
      simp [h0, h1, ha]
  have hsep : f.Separable := separable_C_mul_X_pow_add_C_mul_X_add_C a b c hn hb.isUnit
  obtain ⟨x, hx⟩ := exists_root f hdeg hsep
  exact ⟨x, by simpa [f] using hx⟩

/-- If a separably closed field `k` is of characteristic `p`, `n ≥ 2` is such that `p ∣ n`, `b ≠ 0`,
then there exists `x` in `k` such that `a * x ^ n + b * x + c = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variante7fcbea0378169612fe3522605fe53940d570293dbe2b9b8cda45f61577a1439.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c0065f44cc517ece88df6ea876d1768b0d32fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
