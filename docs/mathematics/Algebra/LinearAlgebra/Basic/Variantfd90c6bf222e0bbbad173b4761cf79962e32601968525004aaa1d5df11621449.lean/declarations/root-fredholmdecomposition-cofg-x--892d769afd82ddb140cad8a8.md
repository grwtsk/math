# _root_.FredholmDecomposition.cofg_X₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ada11c2-3563-da68-7527-f1a373ae801e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f119cafb-3b58-fdf2-e36e-8a8d1c16822c",
  "kind": "lemma",
  "lexical_name": "_root_.FredholmDecomposition.cofg_X₁",
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
  "slug": "root-fredholmdecomposition-cofg-x--892d769afd82ddb140cad8a8",
  "source": {
    "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:892d769afd82ddb140cad8a87497b013d2ef5a2355969840f7ea9a68036df41b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f119cafb-3b58-fdf2-e36e-8a8d1c16822c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.FredholmDecomposition.cofg_X₁ (dec : FredholmDecomposition 𝕜 E) :
    dec.X₁.CoFG :=
  have := dec.finite_X₀
  FG.cofg_of_isCompl dec.isTopCompl.isCompl.symm .of_finite

/-- Let `u : E →L[𝕜] F` be a continuous linear map. A **Fredholm package** for `u` is the data of
Fredholm decompositions `decDom` and `decCodom` of `E` and `F` respectively, together with
a continuous linear equivalence `equiv : decDom.X₁ ≃L[𝕜] decCodom.X₁` between the "essential"
(i.e. finite codimension) parts of these decompositions, such that `u` equals the composition
`decCodom.X₁.subtypeL ∘L equiv ∘L decDom.proj`. In other words, in these
"essential ⊕ inessential" decompositions, the matrix of `u` is
$\begin{pmatrix} \texttt{equiv} & 0 \cr 0 & 0 \end{pmatrix}$.

We will show in `isFredholm_tfae` that an operator is Fredholm if and only if it admits
a Fredholm package. In practice, the condition that `u` is Fredholm (`IsFredholm`) is always easier
to prove, so if you need a Fredholm package you should probably get it from
`IsFredholm.nonempty_fredholmPackage` or `IsFredholm.fredholmPackage`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f8abc5c8ad7e3a26fd394d750df66c48b4079e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
