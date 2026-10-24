# arithmeticShadow_forgets_bracketing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7117038622016c664d476c991ee593bca1a7048a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11918c28-a9cb-00ea-3b7f-15e324c3c07f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:876664f3-679c-cbcd-4521-9c8f2fd8afa7",
  "kind": "theorem",
  "lexical_name": "arithmeticShadow_forgets_bracketing",
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
  "slug": "arithmeticshadow-forgets-bracketing--04d630179310dc061ec0902c",
  "source": {
    "blob": "7117038622016c664d476c991ee593bca1a7048a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d630179310dc061ec0902c37967c51784b584fa04dd80933d07fe43b486876",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:876664f3-679c-cbcd-4521-9c8f2fd8afa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticShadow_forgets_bracketing
    (p q r : PrimeLabel) :
    arithmeticShadowCore
      (OrderedPrimeCore.composite
        (OrderedPrimeCore.composite
          (OrderedPrimeCore.irreducible p)
          (OrderedPrimeCore.irreducible q))
        (OrderedPrimeCore.irreducible r)) =
    arithmeticShadowCore
      (OrderedPrimeCore.composite
        (OrderedPrimeCore.irreducible p)
        (OrderedPrimeCore.composite
          (OrderedPrimeCore.irreducible q)
          (OrderedPrimeCore.irreducible r))) := by
  apply ArithmeticShadow.ext
  intro x
  simp [
    arithmeticShadowCore,
    ArithmeticShadow.add,
    ArithmeticShadow.singleton
  ]
  omega

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7117038622016c664d476c991ee593bca1a7048a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
