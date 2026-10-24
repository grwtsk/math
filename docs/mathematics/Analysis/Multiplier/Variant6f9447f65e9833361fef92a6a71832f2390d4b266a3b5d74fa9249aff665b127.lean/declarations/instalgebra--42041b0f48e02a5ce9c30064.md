# instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92b73d559958a96b750e6210a071afb4b9eb298a0b65b0c80c642e0f41befbbe",
  "kind": "instance",
  "lexical_name": "instAlgebra",
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
  "slug": "instalgebra--42041b0f48e02a5ce9c30064",
  "source": {
    "blob": "3e2bc1a8eb78dadab424bac2091b5a85c6e29dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 390,
    "path": "GRWTSK/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42041b0f48e02a5ce9c300643cc9304345aac5da5cd01b33eabc9236b6302650",
  "verification": {
    "reference": "docs/verification/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92b73d559958a96b750e6210a071afb4b9eb298a0b65b0c80c642e0f41befbbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAlgebra : Algebra 𝕜 𝓜(𝕜, A) where
  toFun k :=
    { toProd := algebraMap 𝕜 ((A →L[𝕜] A) × (A →L[𝕜] A)) k
      central := fun x y => by
        simp_rw [Prod.algebraMap_apply, Algebra.algebraMap_eq_smul_one, smul_apply, one_apply,
          mul_smul_comm, smul_mul_assoc] }
  map_one' := ext (𝕜 := 𝕜) (A := A) _ _ <| map_one <| algebraMap 𝕜 ((A →L[𝕜] A) × (A →L[𝕜] A))
  map_mul' k₁ k₂ :=
    ext (𝕜 := 𝕜) (A := A) _ _ <|
      Prod.ext (map_mul (algebraMap 𝕜 (A →L[𝕜] A)) _ _)
        ((map_mul (algebraMap 𝕜 (A →L[𝕜] A)) _ _).trans (Algebra.commutes _ _))
  map_zero' := ext (𝕜 := 𝕜) (A := A) _ _ <| map_zero <| algebraMap 𝕜 ((A →L[𝕜] A) × (A →L[𝕜] A))
  map_add' _ _ := ext (𝕜 := 𝕜) (A := A) _ _ <|
    map_add (algebraMap 𝕜 ((A →L[𝕜] A) × (A →L[𝕜] A))) _ _
  commutes' _ _ := ext (𝕜 := 𝕜) (A := A) _ _ <|
    Prod.ext (Algebra.commutes _ _) (Algebra.commutes _ _).symm
  smul_def' _ _ := ext (𝕜 := 𝕜) (A := A) _ _ <|
    Prod.ext (Algebra.smul_def _ _) ((Algebra.smul_def _ _).trans <| Algebra.commutes _ _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Multiplier/Variant6f9447f65e9833361fef92a6a71832f2390d4b266a3b5d74fa9249aff665b127.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e2bc1a8eb78dadab424bac2091b5a85c6e29dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
