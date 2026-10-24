# mk_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:523ab4d6-fbc7-77ef-f482-7ef9c6376aad",
  "kind": "lemma",
  "lexical_name": "mk_eq_self",
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
  "slug": "mk-eq-self--d038e46822cdb3e95e99c1cf",
  "source": {
    "blob": "f09463bce183bc861639b790158b95847e51396f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d038e46822cdb3e95e99c1cff5fa3222d9c5d059ffea8ce06e94a66f42d832ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:523ab4d6-fbc7-77ef-f482-7ef9c6376aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_eq_self (G : Graph α β) {E : Set β} (hE : ∀ e, e ∈ E ↔ ∃ x y, G.IsLink e x y) :
    Graph.mk V(G) G.IsLink E
    (by simpa [show E = E(G) by simp [Set.ext_iff, hE, G.edge_mem_iff_exists_isLink]]
      using G.isLink_symm)
    (fun _ _ _ _ _ h h' ↦ h.left_eq_or_eq h') hE
    (fun _ _ _ ↦ IsLink.left_mem) = G := by
  obtain rfl : E = E(G) := by simp [Set.ext_iff, hE, G.edge_mem_iff_exists_isLink]
  cases G with | _ _ _ _ _ _ h _ => simp [← h]

/-- Two graphs with the same vertex set and binary incidences are equal.
(We use this as the default extensionality lemma rather than adding `@[ext]`
to the definition of `Graph`, so it doesn't require equality of the edge sets.) -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09463bce183bc861639b790158b95847e51396f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
