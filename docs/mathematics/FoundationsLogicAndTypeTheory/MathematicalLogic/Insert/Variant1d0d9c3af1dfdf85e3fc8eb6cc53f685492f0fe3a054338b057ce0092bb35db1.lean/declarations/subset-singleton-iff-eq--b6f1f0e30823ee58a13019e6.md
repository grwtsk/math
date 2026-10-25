# subset_singleton_iff_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc116bbd-ee48-59fe-fbb4-39ead3d0c41d",
  "kind": "theorem",
  "lexical_name": "subset_singleton_iff_eq",
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
  "slug": "subset-singleton-iff-eq--b6f1f0e30823ee58a13019e6",
  "source": {
    "blob": "2bfd5faebc09367e54672ba2bd2d46597151e006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant1d0d9c3af1dfdf85e3fc8eb6cc53f685492f0fe3a054338b057ce0092bb35db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f1f0e30823ee58a13019e68a99557075bf4d3aac9232ccf6af45a7e066ffa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant1d0d9c3af1dfdf85e3fc8eb6cc53f685492f0fe3a054338b057ce0092bb35db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc116bbd-ee48-59fe-fbb4-39ead3d0c41d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_singleton_iff_eq {s : Set α} {x : α} : s ⊆ {x} ↔ s = ∅ ∨ s = {x} := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · exact ⟨fun _ => Or.inl rfl, fun _ => empty_subset _⟩
  · simp [eq_singleton_iff_nonempty_unique_mem, hs, hs.ne_empty]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant1d0d9c3af1dfdf85e3fc8eb6cc53f685492f0fe3a054338b057ce0092bb35db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Insert/Variant1d0d9c3af1dfdf85e3fc8eb6cc53f685492f0fe3a054338b057ce0092bb35db1.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bfd5faebc09367e54672ba2bd2d46597151e006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
