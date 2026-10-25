# verify_strict_lower_bound_Icc_withInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca092ee5-b858-b77a-5030-a4bbf3b08c5b",
  "kind": "theorem",
  "lexical_name": "verify_strict_lower_bound_Icc_withInv",
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
  "slug": "verify-strict-lower-bound-icc-withinv--3fc4c61dde9ff40a2eda1a19",
  "source": {
    "blob": "4adfa71e76c3a2587167067aaa1ddd1c1ed295a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc4c61dde9ff40a2eda1a19bb2b66568791df9e02134dbabe76ae8b07baac2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca092ee5-b858-b77a-5030-a4bbf3b08c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strict_lower_bound_Icc_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ)
    (h_cert : checkStrictLowerBoundWithInv e ⟨lo, hi, hle⟩ c = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) (hi : ℝ), c < Expr.eval (fun _ => x) e := by
  intro x hx
  have := verify_strict_lower_bound_withInv e hsupp ⟨lo, hi, hle⟩ c h_cert
  apply this
  rwa [IntervalRat.mem_iff_mem_Icc]

end LeanCert.Validity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4adfa71e76c3a2587167067aaa1ddd1c1ed295a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
