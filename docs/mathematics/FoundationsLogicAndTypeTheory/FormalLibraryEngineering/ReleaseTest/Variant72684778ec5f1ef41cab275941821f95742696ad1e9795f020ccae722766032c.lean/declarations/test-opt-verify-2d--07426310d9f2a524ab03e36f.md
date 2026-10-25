# test_opt_verify_2d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32795e34e3b81cee663c84e644086d6bfbe6db96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d149dd72-5808-b128-0efa-a34105b45a9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c713c5c4-5964-2fd5-716d-29a1faedf8a2",
  "kind": "theorem",
  "lexical_name": "test_opt_verify_2d",
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
  "slug": "test-opt-verify-2d--07426310d9f2a524ab03e36f",
  "source": {
    "blob": "32795e34e3b81cee663c84e644086d6bfbe6db96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07426310d9f2a524ab03e36f0b14735adfb5ac74539ffea0b83cc208ad67c61a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c713c5c4-5964-2fd5-716d-29a1faedf8a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_opt_verify_2d : ∀ ρ, Box.envMem ρ B01_2D → (∀ i, i ≥ B01_2D.length → ρ i = 0) →
    Expr.eval ρ (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                          (Expr.mul (Expr.var 1) (Expr.var 1))) ≤ (2 : ℚ) :=
  verify_global_upper_bound
    (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.mul (Expr.var 1) (Expr.var 1)))
    (ExprSupported.add
      (ExprSupported.mul (ExprSupported.var 0) (ExprSupported.var 0))
      (ExprSupported.mul (ExprSupported.var 1) (ExprSupported.var 1)))
    B01_2D 2 ⟨1000, 1/1000, false, 10⟩
    (by native_decide)

/-! ### `root_bound` - Prove f(x) ≠ 0 (absence of roots) -/

-- x² + 1 ≠ 0 on [0, 1] (always positive)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReleaseTest/Variant72684778ec5f1ef41cab275941821f95742696ad1e9795f020ccae722766032c.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32795e34e3b81cee663c84e644086d6bfbe6db96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
