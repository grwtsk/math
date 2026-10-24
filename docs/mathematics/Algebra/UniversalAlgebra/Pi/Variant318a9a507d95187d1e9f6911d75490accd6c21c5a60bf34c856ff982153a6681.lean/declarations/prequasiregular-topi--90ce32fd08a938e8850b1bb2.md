# PreQuasiregular.toPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36b72b3214fbadbbbd7c07546eea7cb4a7c37f6a7a59d87478ea7feba347e0eb",
  "kind": "def",
  "lexical_name": "PreQuasiregular.toPi",
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
  "slug": "prequasiregular-topi--90ce32fd08a938e8850b1bb2",
  "source": {
    "blob": "2e93b7a0c9019c9d06556be2c9cdbad2d72589a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90ce32fd08a938e8850b1bb27e3c1f49ad49141bd35d672a5956e2b9cdb15a25",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36b72b3214fbadbbbd7c07546eea7cb4a7c37f6a7a59d87478ea7feba347e0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PreQuasiregular.toPi [∀ i, NonUnitalSemiring (κ i)] :
    PreQuasiregular (∀ i, κ i) ≃* ∀ i, PreQuasiregular (κ i) where
  toFun := fun x i => .mk <| x.val i
  invFun := fun x => .mk <| fun i => (x i).val
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl

variable (A B) in
/-- The equivalence between pre-quasiregular elements of a product and the product of
pre-quasiregular elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variant318a9a507d95187d1e9f6911d75490accd6c21c5a60bf34c856ff982153a6681.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e93b7a0c9019c9d06556be2c9cdbad2d72589a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
