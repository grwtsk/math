# xy_modEq_yn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad43a98-dc38-dd10-a172-18df5c5b8a67",
  "kind": "theorem",
  "lexical_name": "xy_modEq_yn",
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
  "slug": "xy-modeq-yn--633c1ebc8df122a8ecf5d608",
  "source": {
    "blob": "11538141504660b997cf1f4a4eb3f1db224faff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 395,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633c1ebc8df122a8ecf5d60880391f8dd9d9c1bf80a27e7f73ffc5a569c01714",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad43a98-dc38-dd10-a172-18df5c5b8a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xy_modEq_yn (n) :
    ∀ k, xn a1 (n * k) ≡ xn a1 n ^ k [MOD yn a1 n ^ 2] ∧ yn a1 (n * k) ≡
        k * xn a1 n ^ (k - 1) * yn a1 n [MOD yn a1 n ^ 3]
  | 0 => by constructor <;> simpa using Nat.ModEq.refl _
  | k + 1 => by
    let ⟨hx, hy⟩ := xy_modEq_yn n k
    have L : xn a1 (n * k) * xn a1 n + d a1 * yn a1 (n * k) * yn a1 n ≡
        xn a1 n ^ k * xn a1 n + 0 [MOD yn a1 n ^ 2] :=
      (hx.mul_right _).add <|
        modEq_zero_iff_dvd.2 <| by
          rw [_root_.pow_succ]
          exact
            mul_dvd_mul_right
              (dvd_mul_of_dvd_right
                (modEq_zero_iff_dvd.1 <|
                  (hy.of_dvd <| by simp [_root_.pow_succ]).trans <|
                    modEq_zero_iff_dvd.2 <| by simp)
                _) _
    have R : xn a1 (n * k) * yn a1 n + yn a1 (n * k) * xn a1 n ≡
        xn a1 n ^ k * yn a1 n + k * xn a1 n ^ k * yn a1 n [MOD yn a1 n ^ 3] :=
      ModEq.add
          (by
            rw [_root_.pow_succ]
            exact hx.mul_right' _) <| by
        have : k * xn a1 n ^ (k - 1) * yn a1 n * xn a1 n = k * xn a1 n ^ k * yn a1 n := by
          rcases k with - | k <;> simp [_root_.pow_succ]; ring_nf
        rw [← this]
        exact hy.mul_right _
    rw [add_tsub_cancel_right, Nat.mul_succ, xn_add, yn_add, pow_succ (xn _ n), Nat.succ_mul,
      add_comm (k * xn _ n ^ k) (xn _ n ^ k), right_distrib]
    exact ⟨L, R⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11538141504660b997cf1f4a4eb3f1db224faff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
