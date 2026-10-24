# instMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:439610b32977e8c8ff8a052e4e31d8e1694f166bfd18316866a8e0593749fe2e",
  "kind": "instance",
  "lexical_name": "instMulAction",
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
  "slug": "instmulaction--76d8173839e1f11e1f40e587",
  "source": {
    "blob": "5b969dd0309b4342deea43a50dabc5d93b9c81fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 366,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76d8173839e1f11e1f40e587bd194c34bf263e7ca1e19c3682ac1d4fa8f6624a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:439610b32977e8c8ff8a052e4e31d8e1694f166bfd18316866a8e0593749fe2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMulAction : MulAction G (AffineBasis ι k V) :=
  DFunLike.coe_injective.mulAction _ coe_smul

end SMul
end Ring

section DivisionRing

variable [DivisionRing k] [Module k V]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b969dd0309b4342deea43a50dabc5d93b9c81fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
