# positive_height_enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff9d910e-ad17-81b9-efaa-ef6939fb0afe",
  "kind": "theorem",
  "lexical_name": "positive_height_enclosure",
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
  "slug": "positive-height-enclosure--965a8e300fa82df77886e963",
  "source": {
    "blob": "9a34811ceb23cc376914d0a6a397f02622c90ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965a8e300fa82df77886e963544e7b2461a18143cff16bd18249f1d50440b3d9",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/VariationalResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff9d910e-ad17-81b9-efaa-ef6939fb0afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_height_enclosure (A : V →ₗ[ℝ] E) (b : E) (x y : V)
    {s : ℝ} (hs : 0 < s) (hsym : SymmetricOnDomain A)
    (hcoerc : CoerciveAt A s) (hsolve : A x = b) :
    lowerReading A b y ≤ ⟪b,(x : E)⟫_ℝ ∧
    ⟪b,(x : E)⟫_ℝ ≤ lowerReading A b y + ‖residual A b y‖^2/s := by
  let e : V := x-y
  have hid := variational_identity A b x y hsym hsolve
  have hpos : 0 ≤ ⟪(e : E), A e⟫_ℝ :=
    (mul_nonneg hs.le (sq_nonneg _)).trans (hcoerc e)
  have hCS : ⟪(e : E), A e⟫_ℝ ≤ ‖(e : E)‖*‖residual A b y‖ := by
    rw [show A e = residual A b y from error_equation A b x y hsolve]
    exact (le_abs_self _).trans (by simpa only [Real.norm_eq_abs] using
      (norm_inner_le_norm (e : E) (residual A b y)))
  have hupper := GRWTSK.Analysis.Inequalities.ResidualEnclosure.coercive_error_bound
    hs (norm_nonneg (e : E)) (norm_nonneg (residual A b y)) (hcoerc e) hCS
  constructor <;> dsimp [e] at hpos hupper <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/VariationalResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a34811ceb23cc376914d0a6a397f02622c90ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
