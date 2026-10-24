# _root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.Algebra.adjoin.powerBasis'_dim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e16eadb6-9145-5e78-e7a6-6028e95b8741",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.Algebra.adjoin.powerBasis'_dim",
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
  "slug": "root-grwtsk-algebra-isintegrallyclosedeqfieldfractions-variant74852b3f7d--1f8e89097f7112a917a4f194",
  "source": {
    "blob": "e834dfcf4a8161c2c8739ea75d1380c7e852d421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 168,
    "path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f8e89097f7112a917a4f19469ba5558ee3fb70dcb48d827c86b682d26b388d0",
  "verification": {
    "reference": "docs/verification/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e16eadb6-9145-5e78-e7a6-6028e95b8741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.IsIntegrallyClosedEqFieldFractions.Variant74852b3f7d9cfba5685903f2ada1da8610d50c5dc37de733abca454ddbbc6815.Algebra.adjoin.powerBasis'_dim (hx : IsIntegral R x) :
    (Algebra.adjoin.powerBasis' hx).dim = (minpoly R x).natDegree := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsIntegrallyClosed/Variant2a784f84d102ffb308feb15df9fe37632472fdfcbc1cb954cc8a89c11bdaec6c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e834dfcf4a8161c2c8739ea75d1380c7e852d421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
