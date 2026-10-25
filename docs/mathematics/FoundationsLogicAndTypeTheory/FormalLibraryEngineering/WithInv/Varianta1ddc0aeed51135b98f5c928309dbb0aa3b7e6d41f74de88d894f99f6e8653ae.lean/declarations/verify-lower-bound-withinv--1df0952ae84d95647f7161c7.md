# verify_lower_bound_withInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fb78997-3b2a-32f6-98c1-ae34ad2c94a3",
  "kind": "theorem",
  "lexical_name": "verify_lower_bound_withInv",
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
  "slug": "verify-lower-bound-withinv--1df0952ae84d95647f7161c7",
  "source": {
    "blob": "4adfa71e76c3a2587167067aaa1ddd1c1ed295a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df0952ae84d95647f7161c7fef288112ac328640acdbb436d544ee0a0a230d6",
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

Occurrence: `result:1fb78997-3b2a-32f6-98c1-ae34ad2c94a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_lower_bound_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (c : ℚ)
    (h_cert : checkLowerBoundWithInv e I c = true) :
    ∀ x ∈ I, c ≤ Expr.eval (fun _ => x) e := by
  simp only [checkLowerBoundWithInv] at h_cert
  split at h_cert
  · next J hsome =>
    simp only [decide_eq_true_eq] at h_cert
    exact evalInterval?_ge_of_lo e hsupp I J c hsome h_cert
  · simp at h_cert

/-- Verification theorem for strict upper bounds with ExprSupportedWithInv. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Varianta1ddc0aeed51135b98f5c928309dbb0aa3b7e6d41f74de88d894f99f6e8653ae.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4adfa71e76c3a2587167067aaa1ddd1c1ed295a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
