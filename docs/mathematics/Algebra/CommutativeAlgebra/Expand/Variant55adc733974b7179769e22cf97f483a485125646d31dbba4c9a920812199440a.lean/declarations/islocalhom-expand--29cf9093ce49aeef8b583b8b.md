# isLocalHom_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afb067b3-55b3-ee56-86d5-68d822223827",
  "kind": "theorem",
  "lexical_name": "isLocalHom_expand",
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
  "slug": "islocalhom-expand--29cf9093ce49aeef8b583b8b",
  "source": {
    "blob": "c04e6a476cc220434d9954052f6179b2c23ce49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 216,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29cf9093ce49aeef8b583b8baae0ada4d1fa1eb88550fc0f36c281737f705d0e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afb067b3-55b3-ee56-86d5-68d822223827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalHom_expand {p : ℕ} (hp : p ≠ 0) : IsLocalHom (expand p (R := R) (σ := σ)) := by
  refine ⟨fun f hf => ?_⟩
  rw [MvPolynomial.isUnit_iff] at hf ⊢
  simp only [coeff_expand_zero p hp] at hf
  refine ⟨hf.1, fun i hi ↦ ?_⟩
  rw [← coeff_expand_smul p hp]
  apply hf.2
  simp [hi, hp]

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04e6a476cc220434d9954052f6179b2c23ce49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
