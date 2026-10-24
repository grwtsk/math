# iteratedLineDerivOp_const_eq_iter_lineDerivOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47997c07a835dac88abf2ab348a48c82cf869a9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:379b0371-dc87-bcb4-cb36-2dcfeb0fb3e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d12daaf-ff91-855b-6753-159ff34ac295",
  "kind": "theorem",
  "lexical_name": "iteratedLineDerivOp_const_eq_iter_lineDerivOp",
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
  "slug": "iteratedlinederivop-const-eq-iter-linederivop--70c0a77c1638fb5af12b147e",
  "source": {
    "blob": "47997c07a835dac88abf2ab348a48c82cf869a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c0a77c1638fb5af12b147e053fd0e31bca086db6207ad4eb712864b2b278ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d12daaf-ff91-855b-6753-159ff34ac295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedLineDerivOp_const_eq_iter_lineDerivOp (n : ℕ) (y : V) (f : E) :
    ∂^{fun (_ : Fin n) ↦ y} f = ∂_{y}^[n] f := by
  induction n with
  | zero => rfl
  | succ n IH =>
    rw [iteratedLineDerivOp_succ_left, Function.iterate_succ_apply']
    congr

end LineDeriv

open LineDeriv

/--
The line derivative is additive, `∂_{v} (x + y) = ∂_{v} x + ∂_{v} y` for all `x y : E`
and `∂_{v + w} x = ∂_{v} x + ∂_{w} y` for all `v w : V`.

Note that `lineDeriv` on functions is not additive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47997c07a835dac88abf2ab348a48c82cf869a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
