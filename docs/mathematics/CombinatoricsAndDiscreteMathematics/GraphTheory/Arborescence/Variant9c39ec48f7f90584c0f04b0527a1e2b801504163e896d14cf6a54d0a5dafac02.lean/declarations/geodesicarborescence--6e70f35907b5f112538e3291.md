# geodesicArborescence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8969acdf9ceb6d556e81091668b4e50554f3891503119246d57eba7f7f8c0f89",
  "kind": "instance",
  "lexical_name": "geodesicArborescence",
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
  "slug": "geodesicarborescence--6e70f35907b5f112538e3291",
  "source": {
    "blob": "9b7f5a4553da8a9fc739ca5f264f73c0b06fa6f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e70f35907b5f112538e32915dd3294a5abd2883d68118c3e07c855dc7349aaf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8969acdf9ceb6d556e81091668b4e50554f3891503119246d57eba7f7f8c0f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance geodesicArborescence : Arborescence (geodesicSubtree r) :=
  arborescenceMk r (fun a => (shortestPath r a).length)
    (by
      rintro a b ⟨e, p, h⟩
      simp_rw [h, Path.length_cons, Nat.lt_succ_iff]
      apply shortest_path_spec)
    (by
      rintro a b c ⟨e, p, h⟩ ⟨f, q, j⟩
      cases h.symm.trans j
      constructor <;> rfl)
    (by
      intro b
      rcases hp : shortestPath r b with (_ | ⟨p, e⟩)
      · exact Or.inl rfl
      · exact Or.inr ⟨_, ⟨⟨e, p, hp⟩⟩⟩)

end GeodesicSubtree

end Quiver
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Arborescence/Variant9c39ec48f7f90584c0f04b0527a1e2b801504163e896d14cf6a54d0a5dafac02.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b7f5a4553da8a9fc739ca5f264f73c0b06fa6f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
