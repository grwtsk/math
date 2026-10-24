# prodBinaryFanIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4634248e461c49e01ff794ffddcfecaaf3783c7106fa17172be1746978239084",
  "kind": "def",
  "lexical_name": "prodBinaryFanIsLimit",
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
  "slug": "prodbinaryfanislimit--7810ae7060692710314cb9cb",
  "source": {
    "blob": "530a51b47b650d05d2b95e9b74d03fafdeef4ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7810ae7060692710314cb9cb196047cf773907ef41a552b388bff911e16f494e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4634248e461c49e01ff794ffddcfecaaf3783c7106fa17172be1746978239084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodBinaryFanIsLimit (X Y : TopCat.{u}) : IsLimit (prodBinaryFan X Y) where
  lift := fun S : BinaryFan X Y => {
    toFun := fun s => (S.fst s, S.snd s)
    -- Porting note: continuity failed again here. Lean cannot infer
    -- ContinuousMapClass (X ⟶ Y) X Y for X Y : TopCat which may be one of the problems
    continuous_toFun := (Continuous.prod_mk)
      (BinaryFan.fst S).continuous_toFun (BinaryFan.snd S).continuous_toFun }
  fac := by
    rintro S (_ | _) <;> {dsimp; ext; rfl}
  uniq := by
    intro S m h
    -- porting note: used to be `ext x`
    refine' ContinuousMap.ext (fun (x : ↥(S.pt)) => Prod.ext _ _)
    · specialize h ⟨WalkingPair.left⟩
      apply_fun fun e => e x at h
      exact h
    · specialize h ⟨WalkingPair.right⟩
      apply_fun fun e => e x at h
      exact h
#align Top.prod_binary_fan_is_limit TopCat.prodBinaryFanIsLimit

/-- The homeomorphism between `X ⨯ Y` and the set-theoretic product of `X` and `Y`,
equipped with the product topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `530a51b47b650d05d2b95e9b74d03fafdeef4ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
