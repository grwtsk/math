# RadicalMember

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63297ca84082a206669a86d43ce1cdd0406880087c573f62b1225470fadc2e60",
  "kind": "def",
  "lexical_name": "RadicalMember",
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
  "slug": "radicalmember--4894b244b4596c18a8f193dd",
  "source": {
    "blob": "72755102c4e199d9358434e72efe00aa48266273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4894b244b4596c18a8f193dd582282b4c18132e4a9038542b69421410199be45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63297ca84082a206669a86d43ce1cdd0406880087c573f62b1225470fadc2e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RadicalMember (J : FunctionIdeal X k) (f : X → k) : Prop :=
  ∃ n : Nat, 0 < n ∧ f ^ n ∈ J

/-- Every ideal of the finite function algebra is radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72755102c4e199d9358434e72efe00aa48266273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
