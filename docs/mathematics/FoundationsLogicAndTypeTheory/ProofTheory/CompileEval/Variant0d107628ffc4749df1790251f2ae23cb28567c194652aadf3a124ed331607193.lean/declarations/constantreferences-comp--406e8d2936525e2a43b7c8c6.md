# constantReferences_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f64c00384c6316318c5e7d2162537c8b1994e684",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b733f205-953e-c6ba-f491-37f5610250df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b84e2d1-601f-3a21-042a-f5cfb86f923a",
  "kind": "theorem",
  "lexical_name": "constantReferences_comp",
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
  "slug": "constantreferences-comp--406e8d2936525e2a43b7c8c6",
  "source": {
    "blob": "f64c00384c6316318c5e7d2162537c8b1994e684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:406e8d2936525e2a43b7c8c626410228ee02ff4530c8a32aa0ad2c789c3fde68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b84e2d1-601f-3a21-042a-f5cfb86f923a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constantReferences_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).constantReferences = derivation.constantReferences := by
  simp [TreePlan.constantReferences, eval_comp]

/--
**Used by:** Root-boundary accounting.

**Boundary cases:** Locally introduced binder variables are included only if the
presentation incorrectly classifies them as root variables; the toy fixture
checks the intended distinction.

**Architectural problem:** Planning must not alter root-variable classification.
**Important data and indices:** Both sides use `K.RootVariable` at exact root `J`.
**Type-enforced invariant:** The same indexed rule metadata is evaluated.
**Layer boundary:** The theorem preserves declared metadata, not adapter correctness.
**Worked example:** The private identity fixture remains root-variable free.
**Used by:** Root-boundary and scope-accounting audits.
**Proof idea:** Unfold plan accounting and rewrite by `eval_comp`.
**Equality notion:** The conclusion is exact finite-set equality.
**Validation consequence:** M1a compilation cannot reclassify abstract roots.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64c00384c6316318c5e7d2162537c8b1994e684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
