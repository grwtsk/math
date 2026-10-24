# sinSmall_refined_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a85bc847c2116f570fd8d80a980815efc3f61630",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99cd938d-5f3f-c384-052a-9e2de23835b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:449e1496-9639-212a-986c-fa0c19ae7aa3",
  "kind": "theorem",
  "lexical_name": "sinSmall_refined_correct",
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
  "slug": "sinsmall-refined-correct--6364f11221c1b1092f228b28",
  "source": {
    "blob": "a85bc847c2116f570fd8d80a980815efc3f61630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 276,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6364f11221c1b1092f228b28155efd5c5fa55433de3c6db2e121ec2e0786570e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:449e1496-9639-212a-986c-fa0c19ae7aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinSmall_refined_correct (x : ℝ) (hx : x ∈ (⟨0, 1/2, by norm_num⟩ : IntervalRat)) :
    Expr.eval (fun _ => x) exprSin ∈ sinSmall_refined :=
  evalIntervalRefined1_correct exprSin exprSin_supported x ⟨0, 1/2, by norm_num⟩ hx

end LeanCert.Examples.Numerics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85bc847c2116f570fd8d80a980815efc3f61630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
