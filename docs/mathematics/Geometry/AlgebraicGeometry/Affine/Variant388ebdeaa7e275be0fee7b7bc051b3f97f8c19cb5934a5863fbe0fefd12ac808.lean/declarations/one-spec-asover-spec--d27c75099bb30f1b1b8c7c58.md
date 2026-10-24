# one_spec_asOver_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88587e4e-1ff7-e9ca-bec0-8eaac63b7317",
  "kind": "lemma",
  "lexical_name": "one_spec_asOver_spec",
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
  "slug": "one-spec-asover-spec--d27c75099bb30f1b1b8c7c58",
  "source": {
    "blob": "c89cab024b6b5c100409aae7fac759074d703051",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 223,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d27c75099bb30f1b1b8c7c5868a22cd14d5f34e1c575df44fd657ded2d8afa7c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88587e4e-1ff7-e9ca-bec0-8eaac63b7317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_spec_asOver_spec [Bialgebra R A] :
    η[(Spec A).asOver (Spec R)] = LaxMonoidal.ε (algSpec R) ≫
      Over.homMk (V := (Spec A).asOver (Spec R))
        (Spec.map <| CommRingCat.ofHom <| Bialgebra.counitAlgHom R A)
          (by simp [specOverSpec_over, ← Spec.map_comp, ← CommRingCat.ofHom_comp,
            CommRingCat.of_carrier]) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c89cab024b6b5c100409aae7fac759074d703051` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
