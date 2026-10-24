# heval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f04b104871dcc3a623dd3f84337372a46e4778a4845d3b4fec4bbd4ceab38888",
  "kind": "def",
  "lexical_name": "heval",
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
  "slug": "heval--c25aa8d6e47db00ee887eb11",
  "source": {
    "blob": "5595bcab07ad6c8311770b34457259a587fef804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 175,
    "path": "GRWTSK/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c25aa8d6e47db00ee887eb11aa8cffa4a2a9d97948e7eb2e63139278b931882a",
  "verification": {
    "reference": "docs/verification/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f04b104871dcc3a623dd3f84337372a46e4778a4845d3b4fec4bbd4ceab38888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def heval : PowerSeries R →ₐ[R] R⟦Γ⟧ where
  toFun f := (powerSeriesFamily x f).hsum
  map_one' := by
    simp only [hsum, smulFamily_toFun, coeff_one, powers_toFun, ite_smul, one_smul, zero_smul]
    ext g
    simp only
    rw [finsum_eq_single _ (0 : ℕ) (fun n hn => by simp [hn])]
    simp
  map_mul' a b := by
    simp only [← hsum_mul, hsum_powerSeriesFamily_mul]
  map_zero' := by
    simp only [hsum, smulFamily_toFun, map_zero, zero_smul,
      coeff_zero, finsum_zero, mk_eq_zero, Pi.zero_def]
  map_add' a b := by
    simp only [powerSeriesFamily_add, hsum_add]
  commutes' r := by
    simp only [algebraMap_eq]
    ext g
    simp only [coeff_hsum, smulFamily_toFun, coeff_C, powers_toFun, ite_smul, zero_smul]
    rw [finsum_eq_single _ 0 fun n hn => by simp [hn]]
    by_cases hg : g = 0 <;> simp [hg, Algebra.algebraMap_eq_smul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HEval/Variant47d338bcefa88804adce208c72dd3ea3091966249baac7f9a84e1757fadc33dc.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5595bcab07ad6c8311770b34457259a587fef804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
