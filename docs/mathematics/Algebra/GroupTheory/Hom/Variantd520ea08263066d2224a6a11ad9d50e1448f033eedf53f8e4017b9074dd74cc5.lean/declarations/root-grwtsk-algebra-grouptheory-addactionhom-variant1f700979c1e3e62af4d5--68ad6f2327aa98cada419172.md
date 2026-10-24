# _root_.GRWTSK.Algebra.GroupTheory.AddActionHom.Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.FaithfulSMul.of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:394d34cf-9381-609a-387c-df3a60b11df5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.AddActionHom.Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.FaithfulSMul.of_injective",
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
  "slug": "root-grwtsk-algebra-grouptheory-addactionhom-variant1f700979c1e3e62af4d5--68ad6f2327aa98cada419172",
  "source": {
    "blob": "e917791cd9952f7a22b9db6c34814674e7b08ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 228,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ad6f2327aa98cada4191724d6e52ae78f4ec8d867b28d4198a84e268666a0d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:394d34cf-9381-609a-387c-df3a60b11df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.GroupTheory.AddActionHom.Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.FaithfulSMul.of_injective
    [FaithfulSMul M' X] [MulActionHomClass F M' X Y] (f : F)
    (hf : Function.Injective f) :
    FaithfulSMul M' Y where
  eq_of_smul_eq_smul {_ _} h := eq_of_smul_eq_smul fun m ↦ hf <| by simp_rw [map_smul, h]

variable {ψ χ} (M N)

/-- The identity map as an equivariant map. -/
@[to_additive "The identity map as an equivariant map."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e917791cd9952f7a22b9db6c34814674e7b08ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
