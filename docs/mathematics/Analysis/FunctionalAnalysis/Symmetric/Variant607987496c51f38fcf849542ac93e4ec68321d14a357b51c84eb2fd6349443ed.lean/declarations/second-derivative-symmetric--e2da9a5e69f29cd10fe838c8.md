# second_derivative_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d736e100624eb6fe703ead1c11a751760147fe98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f987caa9-d4b5-72c3-f3f7-d1d90103e15b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bd2dc09-1e8c-53d2-e885-38e630b24308",
  "kind": "theorem",
  "lexical_name": "second_derivative_symmetric",
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
  "slug": "second-derivative-symmetric--e2da9a5e69f29cd10fe838c8",
  "source": {
    "blob": "d736e100624eb6fe703ead1c11a751760147fe98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 322,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2da9a5e69f29cd10fe838c899b358a2a32d9cd69f4b456af843b00f430b5be4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bd2dc09-1e8c-53d2-e885-38e630b24308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_derivative_symmetric {f : E → F} {f' : E → E →L[ℝ] F} {f'' : E →L[ℝ] E →L[ℝ] F}
    (hf : ∀ y, HasFDerivAt f (f' y) y) (hx : HasFDerivAt f' f'' x) (v w : E) : f'' v w = f'' w v :=
  second_derivative_symmetric_of_eventually (Filter.eventually_of_forall hf) hx v w
#align second_derivative_symmetric second_derivative_symmetric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Symmetric/Variant607987496c51f38fcf849542ac93e4ec68321d14a357b51c84eb2fd6349443ed.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d736e100624eb6fe703ead1c11a751760147fe98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
