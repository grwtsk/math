# orthogonalFamily_iff_pairwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:146efee2-64de-ae6e-3165-f4128e1ac468",
  "kind": "theorem",
  "lexical_name": "orthogonalFamily_iff_pairwise",
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
  "slug": "orthogonalfamily-iff-pairwise--2b9d1c9078d9f47cf7aa9d67",
  "source": {
    "blob": "298bbe68ce3ff23442305ada597ee32d499aab25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 362,
    "path": "GRWTSK/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9d1c9078d9f47cf7aa9d67807caa1fdc2015b8af33c9ca6fd49a80013620c5",
  "verification": {
    "reference": "docs/verification/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:146efee2-64de-ae6e-3165-f4128e1ac468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalFamily_iff_pairwise {ι} {V : ι → Submodule 𝕜 E} :
    (OrthogonalFamily 𝕜 (fun i => V i) fun i => (V i).subtypeₗᵢ) ↔ Pairwise ((· ⟂ ·) on V) :=
  forall₃_congr fun _i _j _hij =>
    Subtype.forall.trans <|
      forall₂_congr fun _x _hx => Subtype.forall.trans <|
        forall₂_congr fun _y _hy => inner_eq_zero_symm

alias ⟨OrthogonalFamily.pairwise, OrthogonalFamily.of_pairwise⟩ := orthogonalFamily_iff_pairwise

/-- Two submodules in an orthogonal family with different indices are orthogonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Orthogonal/Variantf703a41143f37fefe16cd7428a30c994ef0f46b95e5feefb12ea44bb43e9a439.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298bbe68ce3ff23442305ada597ee32d499aab25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
