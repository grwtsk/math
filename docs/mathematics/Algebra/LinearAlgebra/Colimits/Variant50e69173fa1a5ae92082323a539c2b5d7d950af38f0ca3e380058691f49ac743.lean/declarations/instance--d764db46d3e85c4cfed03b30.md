# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f157c41a808b5e7e679d7ec9decfa0d9d1c1c57c3896250d37e9395641eb0a3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d764db46d3e85c4cfed03b30",
  "source": {
    "blob": "16470ef9aeada2f9eac38e1230471ecbaac14fd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d764db46d3e85c4cfed03b300e8612c8b38f4a62ebfe03f60cdde8f8c5ccbd34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f157c41a808b5e7e679d7ec9decfa0d9d1c1c57c3896250d37e9395641eb0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Module R (ColimitType F) where
  smul s := Quotient.map (smul s) <| Relation.smul_1 s
  one_smul := Quotient.ind <| fun _ => Quotient.sound <| Relation.one_smul _
  mul_smul _s _r := Quotient.ind <| fun _ => Quotient.sound <| Relation.mul_smul _ _ _
  smul_add _s := Quotient.ind₂ <| fun _ _ => Quotient.sound <| Relation.smul_add _ _ _
  smul_zero _s := Quotient.sound <| Relation.smul_zero _
  add_smul _s _t := Quotient.ind <| fun _ => Quotient.sound <| Relation.add_smul _ _ _
  zero_smul := Quotient.ind <| fun _ => Quotient.sound <| Relation.zero_smul _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Colimits/Variant50e69173fa1a5ae92082323a539c2b5d7d950af38f0ca3e380058691f49ac743.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16470ef9aeada2f9eac38e1230471ecbaac14fd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
