# evalAll_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccde0482-3027-7d50-0cd4-96f497354128",
  "kind": "theorem",
  "lexical_name": "evalAll_comp",
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
  "slug": "evalall-comp--029dc4d3319c9332db125edf",
  "source": {
    "blob": "5d4c9d2dd6e90a8f9467601f7e0df00e46faa147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:029dc4d3319c9332db125edf5539f12e444c04d02a743c8e794b94fb0343b4f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccde0482-3027-7d50-0cd4-96f497354128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private theorem evalAll_comp
      {K : KernelPresentation.{u}} {js : List K.Judgment}
      (children : IndexedAll (RawDer K) js) :
      evalAll (compAll children) = children := by
    cases children with
    | nil => rfl
    | cons head tail =>
        simp only [compAll, evalAll]
        rw [eval_comp head, evalAll_comp tail]
end

namespace TreePlan

/--
**Architectural problem:** Plans must expose internal constant references.
**Important data and indices:** Names come from `K`; the plan is indexed by `J`.
**Type-enforced invariant:** Accounting evaluates the same indexed plan tree.
**Layer boundary:** This is local accounting, not linked declaration closure.
**Worked example:** The private unary plan reports `Project.helper`.
**Used by:** `BTreePlan` and `constantReferences_comp`.
**Proof idea:** Evaluate the plan and reuse raw reference traversal.
**Equality notion:** Results are exact finite sets of presentation names.
**Boundary cases:** A reference-free plan returns `∅`.
**Validation consequence:** Abstract references remain visible after planning.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4c9d2dd6e90a8f9467601f7e0df00e46faa147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
