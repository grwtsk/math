# atom_iff_nonzero_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c55e0a6-195a-9877-f280-ba6d370f492b",
  "kind": "theorem",
  "lexical_name": "atom_iff_nonzero_span",
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
  "slug": "atom-iff-nonzero-span--b28ee74716ca4f5aaa4cb9ac",
  "source": {
    "blob": "c54793623099042080821af4709b3798dd723e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b28ee74716ca4f5aaa4cb9ac764c092af47bdbeeebbec82131b3cc7bcf03f7f2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c55e0a6-195a-9877-f280-ba6d370f492b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_iff_nonzero_span (W : Submodule K V) :
    IsAtom W ↔ ∃ (v : V) (_ : v ≠ 0), W = span K {v} := by
  refine' ⟨fun h => _, fun h => _⟩
  · cases' h with hbot h
    rcases(Submodule.ne_bot_iff W).1 hbot with ⟨v, ⟨hW, hv⟩⟩
    refine' ⟨v, ⟨hv, _⟩⟩
    by_contra heq
    specialize h (span K {v})
    rw [span_singleton_eq_bot, lt_iff_le_and_ne] at h
    exact hv (h ⟨(span_singleton_le_iff_mem v W).2 hW, Ne.symm heq⟩)
  · rcases h with ⟨v, ⟨hv, rfl⟩⟩
    exact nonzero_span_atom v hv
#align atom_iff_nonzero_span atom_iff_nonzero_span

/-- The lattice of submodules of a module over a division ring is atomistic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variantc03679230a98654fa2b9b124f69b963192be7f07bd7507358dfa02ec5ae63111.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54793623099042080821af4709b3798dd723e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
