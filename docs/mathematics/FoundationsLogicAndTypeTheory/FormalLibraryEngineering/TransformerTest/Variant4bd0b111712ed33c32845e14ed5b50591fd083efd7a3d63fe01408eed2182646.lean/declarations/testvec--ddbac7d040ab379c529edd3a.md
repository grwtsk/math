# testVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e21ee61d608f8b38f235d9f717f8352e039d674b661c3519b499e8c3b8ee413",
  "kind": "def",
  "lexical_name": "testVec",
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
  "slug": "testvec--ddbac7d040ab379c529edd3a",
  "source": {
    "blob": "62b0c171242f882f7c883a05a97c1bafe4197214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddbac7d040ab379c529edd3aa5495b8865a46db24eb78bca1afacccf12056f0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e21ee61d608f8b38f235d9f717f8352e039d674b661c3519b499e8c3b8ee413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testVec : IntervalVector := [
  IntervalDyadic.ofIntervalRat ⟨-1, 0, by norm_num⟩ (-53),
  IntervalDyadic.ofIntervalRat ⟨0, 1, by norm_num⟩ (-53),
  IntervalDyadic.ofIntervalRat ⟨1, 2, by norm_num⟩ (-53)
]

#eval! do
  let result := geluVector testVec
  IO.println "GELU vector output:"
  for h : i in [:result.length] do
    let interval := result[i]
    IO.println s!"  [{i}] = {showInterval interval}"

/-! ### Verify Key Theorems -/

-- The sqrt(2/π) bound is proven
#check sqrt_two_div_pi_mem_interval

-- GELU correctness theorems
#check @mem_geluIntervalRat
#check @mem_geluInterval

-- LayerNorm soundness (has sorry)
#check @mem_layerNorm_forwardInterval

-- All tests pass if this file compiles!
#check "Transformer module tests passed!"

end LeanCert.ML.Transformer.Test
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b0c171242f882f7c883a05a97c1bafe4197214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
