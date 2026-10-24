# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02478c6f11163f62666187ed768f7e31e272ac5cf6918bae8dafaa7a019303a9",
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
  "slug": "instance--d871fc1ab6278dedce2c45a4",
  "source": {
    "blob": "1b4865fd3fbb95a915a4df658da55c75fbfdc158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d871fc1ab6278dedce2c45a4cfddc22cd5748645f0b2fd780649d88f4342870e",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02478c6f11163f62666187ed768f7e31e272ac5cf6918bae8dafaa7a019303a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Add (NumDenSameDeg 𝒜 x) where
  add c1 c2 :=
    { deg := c1.deg + c2.deg
      num := ⟨c1.den * c2.num + c2.den * c1.num,
        add_mem (GradedMul.mul_mem c1.den.2 c2.num.2)
          (add_comm c2.deg c1.deg ▸ GradedMul.mul_mem c2.den.2 c1.num.2)⟩
      den := ⟨c1.den * c2.den, GradedMul.mul_mem c1.den.2 c2.den.2⟩
      den_mem := Submonoid.mul_mem _ c1.den_mem c2.den_mem }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4865fd3fbb95a915a4df658da55c75fbfdc158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
