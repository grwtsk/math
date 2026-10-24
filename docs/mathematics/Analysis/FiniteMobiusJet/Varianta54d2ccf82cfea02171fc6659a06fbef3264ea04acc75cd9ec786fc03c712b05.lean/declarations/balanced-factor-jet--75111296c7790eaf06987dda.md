# balanced_factor_jet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe909235-d6bd-5a53-3cf0-ed03ebebd821",
  "kind": "theorem",
  "lexical_name": "balanced_factor_jet",
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
  "slug": "balanced-factor-jet--75111296c7790eaf06987dda",
  "source": {
    "blob": "480732b0e14d670c65fdb9e86ee9b12d886ff742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75111296c7790eaf06987dda5a7263f1d778a176ac98a3b55259395b8ce2ac66",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe909235-d6bd-5a53-3cf0-ed03ebebd821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_factor_jet (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    HasDerivAt (balancedFactor U kappa q) (kappa : ℂ) 1 := by
  have h := (finite_mobius_derivative U).sub (correction_derivative U kappa hq)
  change HasDerivAt (balancedFactor U kappa q)
    (-(momentOne U : ℂ) - (-(atQ U kappa q * Real.log q / q : ℝ) : ℂ)) 1 at h
  have hc := congrArg (fun x : ℝ ↦ (x : ℂ)) (allocated_low_value U kappa hq)
  simp only [Complex.ofReal_add, Complex.ofReal_neg] at hc
  convert h using 1
  simpa only [sub_neg_eq_add] using hc.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteMobiusJet/Varianta54d2ccf82cfea02171fc6659a06fbef3264ea04acc75cd9ec786fc03c712b05.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480732b0e14d670c65fdb9e86ee9b12d886ff742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
