# verify_point_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cb9a855-d5ae-e6d0-dc2a-62cfb270df7a",
  "kind": "theorem",
  "lexical_name": "verify_point_lower_bound",
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
  "slug": "verify-point-lower-bound--86174d8f81c1ff350c290bcd",
  "source": {
    "blob": "04b82ce9502d0c110ba733da183b6aafc7900224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86174d8f81c1ff350c290bcdb4b0b342139ec99aab71b936faf829833eaf183a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cb9a855-d5ae-e6d0-dc2a-62cfb270df7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_point_lower_bound (e : Expr) (hsupp : ExprSupportedCore e)
    (x c : ℚ) (cfg : EvalConfig)
    (h_cert : checkPointLowerBound e x c cfg = true) :
    c ≤ Expr.eval (fun _ => (x : ℝ)) e := by
  simp only [checkPointLowerBound, Bool.and_eq_true, decide_eq_true_eq] at h_cert
  let Ipt : IntervalRat := ⟨x, x, le_refl x⟩
  have hdom := checkDomainValid1_correct e Ipt cfg h_cert.1
  have hlo := h_cert.2
  have hx_mem : (x : ℝ) ∈ Ipt := ⟨le_refl _, le_refl _⟩
  exact exprCore_ge_of_interval_lo e hsupp Ipt c cfg hdom hlo (x : ℝ) hx_mem

/-- Verify that f(x) ≤ c at a specific point x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b82ce9502d0c110ba733da183b6aafc7900224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
