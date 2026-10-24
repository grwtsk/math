# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77587fd33428513378fd964d24cd884049edf2421954f1b9bd194ac84c0a7384",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--f5a4123df6eba3093a7fc1ed",
  "source": {
    "blob": "bfdc8f72082525c52f1fe03aa34cc279cb8e9735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 575,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5a4123df6eba3093a7fc1ed883071402e599074fe561427822f541480852aea",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77587fd33428513378fd964d24cd884049edf2421954f1b9bd194ac84c0a7384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map : MvPowerSeries σ R →+* MvPowerSeries σ S where
  toFun φ n := f <| coeff R n φ
  map_zero' := ext fun _n => f.map_zero
  map_one' :=
    ext fun n =>
      show f ((coeff R n) 1) = (coeff S n) 1 by
        rw [coeff_one, coeff_one]
        split_ifs with h
        · simp only [RingHom.map_ite_one_zero, ite_true, map_one, h]
        · simp only [RingHom.map_ite_one_zero, ite_false, map_zero, h]
  map_add' φ ψ :=
    ext fun n => show f ((coeff R n) (φ + ψ)) = f ((coeff R n) φ) + f ((coeff R n) ψ) by simp
  map_mul' φ ψ :=
    ext fun n =>
      show f _ = _ by
        rw [coeff_mul, map_sum, coeff_mul]
        apply Finset.sum_congr rfl
        rintro ⟨i, j⟩ _; rw [f.map_mul]; rfl
#align mv_power_series.map MvPowerSeries.map

variable {σ}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant95d8365b3a3fbc91d19d843feaac7e6bc006acd8cc39d59218e4cd88af18321f.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdc8f72082525c52f1fe03aa34cc279cb8e9735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
