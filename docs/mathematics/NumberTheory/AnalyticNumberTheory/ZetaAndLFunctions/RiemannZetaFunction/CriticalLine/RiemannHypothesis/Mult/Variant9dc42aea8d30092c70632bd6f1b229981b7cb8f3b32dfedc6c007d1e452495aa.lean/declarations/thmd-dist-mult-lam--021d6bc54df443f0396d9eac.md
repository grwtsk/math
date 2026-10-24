# thmD_dist_mult_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a36b073fd6b04b568aac377026eafcce129946d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b6e767b-10f1-3cf6-827d-b42c726ad063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba5b00e7-5203-b780-b274-ecbdd234179c",
  "kind": "theorem",
  "lexical_name": "thmD_dist_mult_lam",
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
  "slug": "thmd-dist-mult-lam--021d6bc54df443f0396d9eac",
  "source": {
    "blob": "a36b073fd6b04b568aac377026eafcce129946d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 425,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:021d6bc54df443f0396d9eac321e8770007b343e08cdd086ff69175222193b9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba5b00e7-5203-b780-b274-ecbdd234179c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmD_dist_mult_lam {lam : ℝ} (h0 : 0 < lam) (h1 : lam < 1) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (GD lam - ε) * (Ncount T (2 * T) : ℝ) ≤ Ndist T (2 * T) := by
  have hP := paramsOf_valid taperProfile_stdProfile h0 h1.le
  simpa [paramsOf] using (thmD_mult_lam_abstract zetaZeroConfig paperInputs_zeta
    (paramsOf stdProfile lam) hP h1).2

/-- **0.6725… of the zeros of ζ are SIMPLE AND ON THE CRITICAL LINE, UNCONDITIONAL**
([thm:D]'s second constant: 2 − 1/c₁* = 3/2 − cot(1/√2)/√2, the same as for N₀*, now for the
simple-and-on-line count; the Cauchy–Schwarz form in Zeta23/ThmD/Final.lean has 2c₁* − 1 = 0.50659…). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant9dc42aea8d30092c70632bd6f1b229981b7cb8f3b32dfedc6c007d1e452495aa.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a36b073fd6b04b568aac377026eafcce129946d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
