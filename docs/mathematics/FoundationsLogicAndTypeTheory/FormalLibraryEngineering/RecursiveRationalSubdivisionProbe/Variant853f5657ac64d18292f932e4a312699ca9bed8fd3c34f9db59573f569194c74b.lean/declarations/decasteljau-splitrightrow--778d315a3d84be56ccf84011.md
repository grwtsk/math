# deCasteljau_splitRightRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "056f22f9bc71efe7a46655c76ecf6ca6b52c9b36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef06c912-02dc-39f4-5b1f-e7ad6837a2f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb0a88cf-5cc6-b13c-6963-952902d8add8",
  "kind": "theorem",
  "lexical_name": "deCasteljau_splitRightRow",
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
  "slug": "decasteljau-splitrightrow--778d315a3d84be56ccf84011",
  "source": {
    "blob": "056f22f9bc71efe7a46655c76ecf6ca6b52c9b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:778d315a3d84be56ccf84011177382da3ce8fb78b5367c47d37a5fe1f9f67a3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0a88cf-5cc6-b13c-6963-952902d8add8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deCasteljau_splitRightRow (n : ℕ) (p : ControlRow M)
    (u t : ℝ) :
    deCasteljau n (splitRightRow n p u) t =
      deCasteljau n p (u + (1 - u) * t) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [deCasteljau]
      calc
        deCasteljau n (step t (splitRightRow (n + 1) p u)) t =
            deCasteljau n
              (splitRightRow n (step (u + (1 - u) * t) p) u) t := by
          apply deCasteljau_congr_prefix
          intro i hi
          exact step_splitRightRow_prefix n i hi t u p
        _ = deCasteljau n (step (u + (1 - u) * t) p)
              (u + (1 - u) * t) :=
          ih (step (u + (1 - u) * t) p)
        _ = deCasteljau (n + 1) p (u + (1 - u) * t) := rfl

/-! ## Positive homogeneous rational segments -/

variable {V : Type*} [AddCommGroup V] [Module ℝ V]

/-- A positive-weight rational segment for the recursive evaluator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056f22f9bc71efe7a46655c76ecf6ca6b52c9b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
