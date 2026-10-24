# invertibleThree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31f9c01d5b3fd6cb0c1157b2c0717bf55bec6d01dd426cbf7555690e69ad0b48",
  "kind": "instance",
  "lexical_name": "invertibleThree",
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
  "slug": "invertiblethree--72a3c300fec7ff2946801f23",
  "source": {
    "blob": "caa21ae53862417bf49dd79eeee6d215b010ce50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 70,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72a3c300fec7ff2946801f23b4ed08badb6eec23d1a162c40628fcd10da43a92",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31f9c01d5b3fd6cb0c1157b2c0717bf55bec6d01dd426cbf7555690e69ad0b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance invertibleThree : Invertible (3 : K) :=
  invertibleOfNonzero (by exact_mod_cast (by decide : 3 ≠ 0))
#align invertible_three invertibleThree

end DivisionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caa21ae53862417bf49dd79eeee6d215b010ce50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
