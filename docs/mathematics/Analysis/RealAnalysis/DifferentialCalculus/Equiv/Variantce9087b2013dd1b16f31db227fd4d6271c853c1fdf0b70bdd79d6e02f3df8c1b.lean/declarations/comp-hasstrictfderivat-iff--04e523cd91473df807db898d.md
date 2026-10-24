# comp_hasStrictFDerivAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2da694a133a4fea7c66a999c921eecc0a5687ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a84cf3ab-6933-7fff-b87a-7e979a8d8a3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62a652c9-bf34-52b9-5c40-adfa2d8f531d",
  "kind": "theorem",
  "lexical_name": "comp_hasStrictFDerivAt_iff",
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
  "slug": "comp-hasstrictfderivat-iff--04e523cd91473df807db898d",
  "source": {
    "blob": "f2da694a133a4fea7c66a999c921eecc0a5687ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e523cd91473df807db898df85652a6f6795bbde284c98067918a31b4831de0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62a652c9-bf34-52b9-5c40-adfa2d8f531d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_hasStrictFDerivAt_iff {f : G → E} {x : G} {f' : G →L[𝕜] E} :
    HasStrictFDerivAt (iso ∘ f) ((iso : E →L[𝕜] F).comp f') x ↔ HasStrictFDerivAt f f' x := by
  refine' ⟨fun H => _, fun H => iso.hasStrictFDerivAt.comp x H⟩
  convert iso.symm.hasStrictFDerivAt.comp x H using 1 <;>
    ext z <;> apply (iso.symm_apply_apply _).symm
#align continuous_linear_equiv.comp_has_strict_fderiv_at_iff ContinuousLinearEquiv.comp_hasStrictFDerivAt_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantce9087b2013dd1b16f31db227fd4d6271c853c1fdf0b70bdd79d6e02f3df8c1b.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2da694a133a4fea7c66a999c921eecc0a5687ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
