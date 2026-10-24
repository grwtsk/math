# pell_dioph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6159cdd8-1cd7-a67b-be72-7bef10c5319f",
  "kind": "theorem",
  "lexical_name": "pell_dioph",
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
  "slug": "pell-dioph--9390c6e6a60afb06fb9b61c3",
  "source": {
    "blob": "f71afed2b47ebfcc74931ab6af18f84857689f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 737,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9390c6e6a60afb06fb9b61c34ad9f3f267999ce00e34c755581174f56722c02e",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6159cdd8-1cd7-a67b-be72-7bef10c5319f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pell_dioph :
    Dioph fun v : Vector3 ℕ 4 => ∃ h : 1 < v &0, xn h (v &1) = v &2 ∧ yn h (v &1) = v &3 := by
  have proof := D.1 D< D&0 D∧ D&1 D≤ D&3 D∧
      ((D&2 D= D.1 D∧ D&3 D= D.0) D∨
      ((D∃) 4 <| (D∃) 5 <| (D∃) 6 <| (D∃) 7 <| (D∃) 8 <|
      D&7 D* D&7 D- (D&5 D* D&5 D- D.1) D* D&8 D* D&8 D= D.1 D∧
      D&4 D* D&4 D- (D&5 D* D&5 D- D.1) D* D&3 D* D&3 D= D.1 D∧
      D&2 D* D&2 D- (D&0 D* D&0 D- D.1) D* D&1 D* D&1 D= D.1 D∧
      D.1 D< D&0 D∧ (D≡ (D&0) (D.1) (D.4 D* D&8)) D∧ (D≡ (D&0) (D&5) (D&4)) D∧
      D.0 D< D&3 D∧ D&8 D* D&8 D∣ D&3 D∧
      (D≡ (D&2) (D&7) (D&4)) D∧
      (D≡ (D&1) (D&6) (D.4 D* (D&8)))))
  -- Porting note: copying directly `proof` in the proof of the following have fails
  have : Dioph {v : Vector3 ℕ 4 |
    1 < v &0 ∧ v &1 ≤ v &3 ∧
    (v &2 = 1 ∧ v &3 = 0 ∨
    ∃ u w s t b : ℕ,
      v &2 * v &2 - (v &0 * v &0 - 1) * v &3 * v &3 = 1 ∧
      u * u - (v &0 * v &0 - 1) * w * w = 1 ∧
      s * s - (b * b - 1) * t * t = 1 ∧
      1 < b ∧ b ≡ 1 [MOD 4 * v &3] ∧ b ≡ v &0 [MOD u] ∧
      0 < w ∧ v &3 * v &3 ∣ w ∧
      s ≡ v &2 [MOD u] ∧
      t ≡ v &1 [MOD 4 * v &3])} := by
    exact proof
  exact Dioph.ext this fun v => matiyasevic.symm
#align dioph.pell_dioph Dioph.pell_dioph

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71afed2b47ebfcc74931ab6af18f84857689f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
