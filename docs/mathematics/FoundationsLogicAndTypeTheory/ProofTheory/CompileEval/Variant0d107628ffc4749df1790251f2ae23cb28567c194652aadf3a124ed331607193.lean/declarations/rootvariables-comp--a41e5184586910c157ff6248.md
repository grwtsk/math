# rootVariables_comp

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
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f432faad-4d00-f3c3-8e20-620b30df6d0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3123fe9-cc9c-c78e-6d11-015780cc3586",
  "kind": "theorem",
  "lexical_name": "rootVariables_comp",
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
  "slug": "rootvariables-comp--a41e5184586910c157ff6248",
  "source": {
    "blob": "f64c00384c6316318c5e7d2162537c8b1994e684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41e5184586910c157ff6248a80110eba22f3d9475437d128ad054ea869cc881",
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

Occurrence: `result:b3123fe9-cc9c-c78e-6d11-015780cc3586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootVariables_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).rootVariables = derivation.rootVariables := by
  simp [TreePlan.rootVariables, eval_comp]

/--
**Used by:** Leaf-provenance audits.

**Boundary cases:** Only empty-premise rules can contribute origins by the
presentation interface.

**Architectural problem:** Planning must not lose or invent leaf provenance.
**Important data and indices:** Both sides use `K.LeafOrigin` at root `J`.
**Type-enforced invariant:** Origin extraction follows the same indexed rules.
**Layer boundary:** The theorem preserves labels, not their concrete fidelity.
**Worked example:** `.introducedLocal` remains on both sides for the identity fixture.
**Used by:** Leaf-provenance audits.
**Proof idea:** Unfold plan accounting and rewrite by `eval_comp`.
**Equality notion:** The conclusion is exact finite-set equality.
**Validation consequence:** M1a compilation preserves abstract provenance.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64c00384c6316318c5e7d2162537c8b1994e684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
