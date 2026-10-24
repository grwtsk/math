# complementary_critical_kernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14dfc774-37c0-7beb-c36d-3a0fbb672578",
  "kind": "theorem",
  "lexical_name": "complementary_critical_kernel_integrable",
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
  "slug": "complementary-critical-kernel-integrable--74abdba7cb68dcfa3695f1bb",
  "source": {
    "blob": "216d5b0940156dc7d4caa04f1a32300c3ac31cd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74abdba7cb68dcfa3695f1bb9fe4ce39885a4c09ab12a150abd1e6df8967d99c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14dfc774-37c0-7beb-c36d-3a0fbb672578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementary_critical_kernel_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (complementaryCriticalKernel A) (Ioi (0 : ℝ)) := by
  have hi := (integrableOn_comp_exp_Ioi (fun x =>
    complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) 0).mpr
    (by simpa only [Real.exp_zero] using complementary_derivative_integrable_Ioi hA)
  have hn : IntegrableOn (fun t => -complementaryCriticalKernel A t) (Ioi (0 : ℝ)) :=
    hi.congr_fun (fun t _ => complementary_log_kernel_eq hA t) measurableSet_Ioi
  convert hn.neg using 1
  funext t
  simp only [Pi.neg_apply, neg_neg]

/-- Full L-B equals one actual signed critical cumulative pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb016e8c1fb05e1c0bb816741f8ae368f61145896e8e0cc5b754ad56c56103b90.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d5b0940156dc7d4caa04f1a32300c3ac31cd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
