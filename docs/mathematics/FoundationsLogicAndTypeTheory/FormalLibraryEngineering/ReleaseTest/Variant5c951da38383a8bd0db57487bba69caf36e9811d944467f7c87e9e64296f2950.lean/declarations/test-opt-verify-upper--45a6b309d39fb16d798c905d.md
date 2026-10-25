# test_opt_verify_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae6f908-d471-c5b3-02e9-0fe709393fc8",
  "kind": "theorem",
  "lexical_name": "test_opt_verify_upper",
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
  "slug": "test-opt-verify-upper--45a6b309d39fb16d798c905d",
  "source": {
    "blob": "77884ecc9ba2fbb4f5469c84227951e30e601f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45a6b309d39fb16d798c905d91c6e85175b2413da6a71b8c47fe98da26bdc820",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae6f908-d471-c5b3-02e9-0fe709393fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_opt_verify_upper : ∀ ρ, Box.envMem ρ B01 → (∀ i, i ≥ B01.length → ρ i = 0) →
    Expr.eval ρ (Expr.mul (Expr.var 0) (Expr.var 0)) ≤ (1 : ℚ) :=
  verify_global_upper_bound
    (Expr.mul (Expr.var 0) (Expr.var 0))
    (ExprSupported.mul (ExprSupported.var 0) (ExprSupported.var 0))
    B01 1 ⟨1000, 1/1000, false, 10⟩
    (by native_decide)

open LeanCert.Validity.GlobalOpt in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant5c951da38383a8bd0db57487bba69caf36e9811d944467f7c87e9e64296f2950.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77884ecc9ba2fbb4f5469c84227951e30e601f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
