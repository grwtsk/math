# correction_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e713ea3f-f9c6-7b55-3db6-6c1f93e65f05",
  "kind": "theorem",
  "lexical_name": "correction_value",
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
  "slug": "correction-value--20ab3e19629ba3c5a7d84c91",
  "source": {
    "blob": "e3ff04d28de626aad9504025c07a2a89b3d6b700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20ab3e19629ba3c5a7d84c91bdf3421072169f1d1367ef02dd9fa078fbeca563",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e713ea3f-f9c6-7b55-3db6-6c1f93e65f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_value (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    correction U kappa q 1 = (momentZero U : ℂ) := by
  unfold correction
  rw [atom_at_one (by omega : 1 ≤ q)]
  have h := (exact_two_moments U kappa hq).1
  have hc := congrArg (fun x : ℝ ↦ (x : ℂ)) h
  push_cast at hc
  simpa [div_eq_mul_inv] using hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteMobiusJet/Variant1f1a591ef35b26d2dcf432e447b87b4d975845290a89ff94251e8751d0e68348.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3ff04d28de626aad9504025c07a2a89b3d6b700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
