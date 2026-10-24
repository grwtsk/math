# isTotallyReal_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24c7a072022ff14764d14cd63c37ef754f2f516a63a3ddbf3d55731124908e45",
  "kind": "instance",
  "lexical_name": "isTotallyReal_iSup",
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
  "slug": "istotallyreal-isup--30a68088798839e893aeb319",
  "source": {
    "blob": "17a3626a0cf6d40f8c26469b262eb6a3a2856c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a68088798839e893aeb319fca3834e55b51ab5cd1216dd1094d022c0f41df9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24c7a072022ff14764d14cd63c37ef754f2f516a63a3ddbf3d55731124908e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isTotallyReal_iSup {ι : Type*} {k : ι → Subfield K} [∀ i, IsTotallyReal (k i)] :
    IsTotallyReal (⨆ i, k i : Subfield K) := by
  simp_all [isTotallyReal_iff_le_maximalRealSubfield]

end maximalRealSubfield

end TotallyRealField

section TotallyComplexField

/-
## Totally complex number fields
-/

open InfinitePlace

/--
A number field `K` is totally complex if all of its infinite places are complex.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a3626a0cf6d40f8c26469b262eb6a3a2856c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
