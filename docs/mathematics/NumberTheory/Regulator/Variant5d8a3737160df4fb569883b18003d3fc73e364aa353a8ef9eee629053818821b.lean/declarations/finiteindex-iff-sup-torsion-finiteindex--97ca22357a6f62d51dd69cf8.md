# finiteIndex_iff_sup_torsion_finiteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f49ca62e-7d23-52d9-8cd1-10d135b8115c",
  "kind": "theorem",
  "lexical_name": "finiteIndex_iff_sup_torsion_finiteIndex",
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
  "slug": "finiteindex-iff-sup-torsion-finiteindex--97ca22357a6f62d51dd69cf8",
  "source": {
    "blob": "5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97ca22357a6f62d51dd69cf8075e5a5c691e27303fea6e2623e0e4ef3cbede1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f49ca62e-7d23-52d9-8cd1-10d135b8115c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteIndex_iff_sup_torsion_finiteIndex (s : Subgroup (𝓞 K)ˣ) :
    s.FiniteIndex ↔ (s ⊔ torsion K).FiniteIndex := by
  refine ⟨fun h ↦ Subgroup.finiteIndex_of_le le_sup_left, fun h ↦ ?_⟩
  rw [Subgroup.finiteIndex_iff, ← Subgroup.relIndex_mul_index (le_sup_left : s ≤ s ⊔ torsion K)]
  refine Nat.mul_ne_zero ?_ (Subgroup.finiteIndex_iff.mp h)
  rw [Subgroup.relIndex_sup_left]
  exact Subgroup.FiniteIndex.index_ne_zero

set_option backward.isDefEq.respectTransparency false in
open Subgroup in
/--
A family of units is of maximal rank iff the index of the subgroup it generates has finite index.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
