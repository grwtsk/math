# test_tactic_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e808a63d-882d-a985-a0fa-3aca018a6524",
  "kind": "theorem",
  "lexical_name": "test_tactic_cos",
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
  "slug": "test-tactic-cos--5b016052ce14f45f6cd506b5",
  "source": {
    "blob": "f750735ba240f5db8a629c8113eac5cebe8979db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b016052ce14f45f6cd506b5e0387d1c760ca27fe5bf8d222387fa1cf2b3f907",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e808a63d-882d-a985-a0fa-3aca018a6524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem test_tactic_cos : ∃ x ∈ I_1_2, Expr.eval (fun _ => x) (Expr.cos (Expr.var 0)) = 0 := by
  interval_roots

/-! ## Test interval_minimize / interval_maximize tactics

These tactics prove existential goals about bounds by:
1. Running global optimization to find the bound
2. Instantiating the existential with the found value
3. Proving the universal bound using opt_bound

NOTE: The goal format must match exactly:
- interval_minimize: ∃ m, ∀ x ∈ I, c ≤ f(x)  (where c is bvar 0)
- interval_maximize: ∃ M, ∀ x ∈ I, f(x) ≤ c  (where c is bvar 0)
-/

-- Test interval_minimize: x² has minimum 0 on [-1, 1]
-- Goal: ∃ m, ∀ x ∈ I_neg1_1, m ≤ x²
-- Uses GE.ge form: x² ≥ m (same as m ≤ x²)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant4c00616bd73fcb817848b141d7181f1f777e5a554eab8f693fa0ecb6c61ea843.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f750735ba240f5db8a629c8113eac5cebe8979db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
