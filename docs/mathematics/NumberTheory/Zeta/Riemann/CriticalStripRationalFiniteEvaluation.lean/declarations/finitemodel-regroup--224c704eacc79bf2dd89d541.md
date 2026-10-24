# finiteModel_regroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f81eaa82-2638-e45d-124f-370f156fa5f2",
  "kind": "theorem",
  "lexical_name": "finiteModel_regroup",
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
  "slug": "finitemodel-regroup--224c704eacc79bf2dd89d541",
  "source": {
    "blob": "f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:224c704eacc79bf2dd89d541933b4c9f532bea22cc14e46b06b92f036d192273",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f81eaa82-2638-e45d-124f-370f156fa5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteModel_regroup {N : ℕ} (hN : 1 ≤ N) (s : ℂ) :
    finiteModel N s=(s-1)*finiteDirichletPowerSum N s+weightC N s*(N : ℂ)^(-s) := by
  have hnNat : N ≠ 0 := (lt_of_lt_of_le Nat.zero_lt_one hN).ne'
  have hn : (N : ℂ) ≠ 0 := by exact_mod_cast hnNat
  have hshift (j : ℕ) : (N : ℂ)^(-(s+(j : ℂ)))=(N : ℂ)^(-s)/(N : ℂ)^j := by
    rw [show -(s+(j : ℂ))=-s-(j : ℂ) by ring,
      Complex.cpow_sub _ _ hn,Complex.cpow_natCast]
  have hend : (N : ℂ)^(1-s)=(N : ℂ)*(N : ℂ)^(-s) := by
    rw [sub_eq_add_neg,Complex.cpow_add _ _ hn,Complex.cpow_one]
  unfold finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  rw [hend,hshift 1,hshift 3,hshift 5]
  unfold weightC
  field_simp [hn] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalFiniteEvaluation.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1cb00b3f68aee81fbfdeb1821f6d1115d1ede9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
