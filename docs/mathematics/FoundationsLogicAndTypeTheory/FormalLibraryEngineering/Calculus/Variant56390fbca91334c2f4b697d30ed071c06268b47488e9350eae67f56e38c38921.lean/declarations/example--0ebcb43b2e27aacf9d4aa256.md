# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a0596f247b9798efbc7670023a38d250ba766926a08eb2167711cf7d2e235af",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--0ebcb43b2e27aacf9d4aa256",
  "source": {
    "blob": "fe2990ee9e00a51d2b98f43324694e970e48165e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calculus/Variant56390fbca91334c2f4b697d30ed071c06268b47488e9350eae67f56e38c38921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ebcb43b2e27aacf9d4aa256aecb12804780e82ebbf247d7f7ee42e8c8816ec2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calculus/Variant56390fbca91334c2f4b697d30ed071c06268b47488e9350eae67f56e38c38921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a0596f247b9798efbc7670023a38d250ba766926a08eb2167711cf7d2e235af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : Expr.eval (fun _ => (3 : ℝ)) exprXSquared ∈ (evalXSquaredAt 3).val := by
  -- Use the general theorem: if 3 ∈ singleton(3), then eval at 3 ∈ val
  have h3 : (3 : ℝ) ∈ IntervalRat.singleton (3 : ℚ) := IntervalRat.mem_singleton 3
  apply evalDual_val_correct exprXSquared exprXSquared_supported
  intro i
  simp only [mkDualEnv]
  split_ifs
  · simp only [DualInterval.varActive]; exact h3
  · simp only [DualInterval.varPassive]; exact h3

/-- The eval of x² at 3 is indeed 9 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calculus/Variant56390fbca91334c2f4b697d30ed071c06268b47488e9350eae67f56e38c38921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calculus/Variant56390fbca91334c2f4b697d30ed071c06268b47488e9350eae67f56e38c38921.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2990ee9e00a51d2b98f43324694e970e48165e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
