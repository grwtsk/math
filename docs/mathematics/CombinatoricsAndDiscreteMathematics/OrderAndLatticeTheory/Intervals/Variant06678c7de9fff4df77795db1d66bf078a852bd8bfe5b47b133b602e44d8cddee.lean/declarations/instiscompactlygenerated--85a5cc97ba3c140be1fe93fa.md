# instIsCompactlyGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bd54d465bc75a30bfc652738f913c60d10136ec9fb3819ecdfb62022c289216",
  "kind": "instance",
  "lexical_name": "instIsCompactlyGenerated",
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
  "slug": "instiscompactlygenerated--85a5cc97ba3c140be1fe93fa",
  "source": {
    "blob": "81f59d54ce94b2f7b793711be4f4e225f442621a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85a5cc97ba3c140be1fe93fa37c52f468f6419e1d4ad3a7c40ab9090e2a5a62d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bd54d465bc75a30bfc652738f913c60d10136ec9fb3819ecdfb62022c289216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsCompactlyGenerated [IsCompactlyGenerated α] {a : α} :
    IsCompactlyGenerated (Iic a) := by
  refine ⟨fun ⟨x, (hx : x ≤ a)⟩ ↦ ?_⟩
  obtain ⟨s, hs, rfl⟩ := IsCompactlyGenerated.exists_sSup_eq x
  rw [sSup_le_iff] at hx
  let f : s → Iic a := fun y ↦ ⟨y, hx _ y.property⟩
  refine ⟨range f, ?_, ?_⟩
  · rintro - ⟨⟨y, hy⟩, hy', rfl⟩
    exact isCompactElement (hs _ hy)
  · rw [Subtype.ext_iff]
    change sSup (((↑) : Iic a → α) '' (range f)) = sSup s
    congr
    ext b
    simpa [f] using hx b

end Set.Iic

open Set (Iic)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant06678c7de9fff4df77795db1d66bf078a852bd8bfe5b47b133b602e44d8cddee.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f59d54ce94b2f7b793711be4f4e225f442621a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
