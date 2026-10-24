# equation_iff_baseChange_of_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa390ff80053227848f372af22a23763a22f4cad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf08de35-00ed-e810-3a2b-f7873d3928c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbc3360b-5d3a-dbc6-e985-bb3a5c40fca3",
  "kind": "lemma",
  "lexical_name": "equation_iff_baseChange_of_baseChange",
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
  "slug": "equation-iff-basechange-of-basechange--19bd35c570a2596c36e4d454",
  "source": {
    "blob": "aa390ff80053227848f372af22a23763a22f4cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 697,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19bd35c570a2596c36e4d45477c24efd09687b6538e3e23ea9a150fbe9dc5ea4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbc3360b-5d3a-dbc6-e985-bb3a5c40fca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equation_iff_baseChange_of_baseChange [Nontrivial B] [NoZeroSMulDivisors A B] (x y : A) :
    (W.baseChange A).equation x y ↔
      (W.baseChange B).equation (algebraMap A B x) (algebraMap A B y) := by
  rw [equation_iff_baseChange (W.baseChange A) B, baseChange_baseChange]
#align weierstrass_curve.equation_iff_base_change_of_base_change WeierstrassCurve.equation_iff_baseChange_of_baseChange

/-! ### Nonsingularity of Weierstrass curves -/

-- porting note: added `protected` for consistency with `WeierstrassCurve.polynomial`
/-- The partial derivative $W_X(X, Y)$ of $W(X, Y)$ with respect to $X$.

TODO: define this in terms of `Polynomial.derivative`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weierstrass/Variant62c887b223386eeb7633897ae7713bad1466fd64f1a19892e681028fae322a49.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa390ff80053227848f372af22a23763a22f4cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
