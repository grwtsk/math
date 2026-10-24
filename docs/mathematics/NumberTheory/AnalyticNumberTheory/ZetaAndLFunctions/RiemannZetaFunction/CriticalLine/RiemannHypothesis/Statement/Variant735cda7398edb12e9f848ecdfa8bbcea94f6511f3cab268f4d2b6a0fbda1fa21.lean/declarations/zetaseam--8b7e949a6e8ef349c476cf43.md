# ZetaSeam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9cf5aa767b22781f94be4ede9763b9c74e01d55119291326e4339c6bb1abc68",
  "kind": "structure",
  "lexical_name": "ZetaSeam",
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
  "slug": "zetaseam--8b7e949a6e8ef349c476cf43",
  "source": {
    "blob": "74085fe35de31f060aa2edeadc55e1487b856dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b7e949a6e8ef349c476cf43f2f4436df1c605e2c9c2457062a1f819478f98cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9cf5aa767b22781f94be4ede9763b9c74e01d55119291326e4339c6bb1abc68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZetaSeam : Prop where
  /-- H-fin: at a nontrivial zero the analytic order is finite and ≥ 1. -/
  one_le_mult : ∀ ρ, IsNontrivialZero ρ → 1 ≤ zeroMult ρ
  /-- H-symm (set): ρ ↦ 1 − conj ρ preserves nontrivial zeros. -/
  reflect_zero : ∀ ρ, IsNontrivialZero ρ → IsNontrivialZero (reflect ρ)
  /-- H-symm (multiplicity). -/
  mult_reflect : ∀ ρ, IsNontrivialZero ρ → zeroMult (reflect ρ) = zeroMult ρ
  /-- local finiteness: finitely many nontrivial zeros with T₁ < γ ≤ T₂. -/
  finite_window : ∀ T₁ T₂ : ℝ, ({ρ | IsNontrivialZero ρ} ∩ {ρ | T₁ < ρ.im ∧ ρ.im ≤ T₂}).Finite

/-- The nontrivial zeros of ζ with their multiplicities, as an abstract zero configuration.
carrier := {ρ | IsNontrivialZero ρ} exactly, mult := zeroMult exactly (seam requirement: H-EF's
W then ranges over exactly the nontrivial zeros weighted by exactly the analytic order). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74085fe35de31f060aa2edeadc55e1487b856dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
