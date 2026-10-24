# code_filteredEnumeration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:852dbd6c-cd3b-5c57-d574-d179298e0f91",
  "kind": "theorem",
  "lexical_name": "code_filteredEnumeration",
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
  "slug": "code-filteredenumeration--1e6ac9cb6f3eae74956b9c86",
  "source": {
    "blob": "0f5f0c50442dcc83b0ea890437b65a446e62c591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 439,
    "path": "GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6ac9cb6f3eae74956b9c86277896c4d3c78d6f6df1072e837e323c5aff2c66",
  "verification": {
    "reference": "docs/verification/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:852dbd6c-cd3b-5c57-d574-d179298e0f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem code_filteredEnumeration (index : Nat) :
    code (filteredEnumeration index) = increasingImageEnumeration index := by
  change code ((Equiv.ofInjective code code_injective).symm
    (increasingImageEnumeration index)) = _
  have restored := (Equiv.ofInjective code code_injective).apply_symm_apply
    (increasingImageEnumeration index)
  exact congrArg Subtype.val restored

/-- The documented filtered increasing address enumeration `ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5f0c50442dcc83b0ea890437b65a446e62c591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
