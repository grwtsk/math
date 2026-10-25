# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_isTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c31d7e71-3987-d85c-4cfa-9ae066e07c4b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_isTrans",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-isordinal-variantc62--0e80addc77a773c6b75c9281",
  "source": {
    "blob": "f40a2ae12c1639cdf9070fa3d9f9c80afe07c466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e80addc77a773c6b75c92810430232f344f21658b1f0b1fddd744a866054792",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c31d7e71-3987-d85c-4cfa-9ae066e07c4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.ZFSet.isOrdinal_iff_isTrans :
    x.IsOrdinal ↔ x.IsTransitive ∧ IsTrans _ (Subrel (· ∈ ·) (· ∈ x)) where
  mp h := ⟨h.isTransitive, h.isTrans⟩
  mpr := by
    rintro ⟨h₁, ⟨h₂⟩⟩
    refine ⟨h₁, fun {y z w} hyz hzw hwx ↦ ?_⟩
    have hzx := h₁.mem_trans hzw hwx
    exact h₂ ⟨y, h₁.mem_trans hyz hzx⟩ ⟨z, hzx⟩ ⟨w, hwx⟩ hyz hzw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40a2ae12c1639cdf9070fa3d9f9c80afe07c466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
