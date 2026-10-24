# isCoatom_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a8ba2f1-d7b3-6dd3-0515-6a8539e56187",
  "kind": "lemma",
  "lexical_name": "isCoatom_iff",
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
  "slug": "iscoatom-iff--7c8ce80f235ddcd8cca56c9d",
  "source": {
    "blob": "64f62e6518d27c1c3fb8347411216464c14d099b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c8ce80f235ddcd8cca56c9deb38d045f908480abea0e031b8480b3da4d58681",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a8ba2f1-d7b3-6dd3-0515-6a8539e56187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma isCoatom_iff : IsCoatom s ↔ ∃ a, s = {a}ᶜ := by
  simp_rw [← isAtom_compl, Finset.isAtom_iff, compl_eq_iff_isCompl, eq_compl_iff_isCompl]

end Fintype

/-- Finsets are multiset-graded. This is not very meaningful mathematically but rather a handy way
to record that the inclusion `Finset α ↪ Multiset α` preserves the covering relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Grade/Variantff61d38a4a25b22639398a0e36147d6883f9b3cf3b456aa83395cc5f4336d34f.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f62e6518d27c1c3fb8347411216464c14d099b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
