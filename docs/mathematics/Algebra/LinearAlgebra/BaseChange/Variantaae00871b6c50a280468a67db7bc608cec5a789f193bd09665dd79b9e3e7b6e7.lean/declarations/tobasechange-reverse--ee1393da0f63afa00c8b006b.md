# toBaseChange_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44d6e5bc298baf9535b73a8d80d98044c6110b5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be7180c4-51a9-f599-dc2d-a548be99e1fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b609559b-f133-3fbc-b819-8fe5164d5bae",
  "kind": "theorem",
  "lexical_name": "toBaseChange_reverse",
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
  "slug": "tobasechange-reverse--ee1393da0f63afa00c8b006b",
  "source": {
    "blob": "44d6e5bc298baf9535b73a8d80d98044c6110b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee1393da0f63afa00c8b006b3bcbf5ea4a4ee8dbdf045f2b493dcccfe926e8cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b609559b-f133-3fbc-b819-8fe5164d5bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBaseChange_reverse (Q : QuadraticForm R V) (x : CliffordAlgebra (Q.baseChange A)) :
    toBaseChange A Q (reverse x) =
      TensorProduct.map LinearMap.id reverse (toBaseChange A Q x) := by
  have := DFunLike.congr_fun (toBaseChange_comp_reverseOp A Q) x
  refine (congr_arg unop this).trans ?_; clear this
  refine (LinearMap.congr_fun (TensorProduct.AlgebraTensorModule.map_comp _ _ _ _).symm _).trans ?_
  rw [reverse, AlgEquiv.toAlgHom_toLinearMap, AlgEquiv.toLinearEquiv_toOpposite]
  dsimp
  -- `simp` fails here due to a timeout looking for a `Subsingleton` instance!?
  rw [LinearEquiv.self_trans_symm]
  rfl

attribute [ext] TensorProduct.ext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantaae00871b6c50a280468a67db7bc608cec5a789f193bd09665dd79b9e3e7b6e7.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d6e5bc298baf9535b73a8d80d98044c6110b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
