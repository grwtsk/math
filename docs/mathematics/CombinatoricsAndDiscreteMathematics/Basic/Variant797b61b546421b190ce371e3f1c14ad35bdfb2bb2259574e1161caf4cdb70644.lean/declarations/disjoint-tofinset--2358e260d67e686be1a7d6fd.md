# disjoint_toFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db02da1-645d-1367-85c1-71b917857965",
  "kind": "theorem",
  "lexical_name": "disjoint_toFinset",
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
  "slug": "disjoint-tofinset--2358e260d67e686be1a7d6fd",
  "source": {
    "blob": "b60684812356eac00940fb922aa14757ea39b085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3840,
    "line": 3824,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2358e260d67e686be1a7d6fd4c8162e0763c33c30978fe0a2a9c224c92cbd4a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db02da1-645d-1367-85c1-71b917857965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3824–3840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_toFinset {m1 m2 : Multiset α} :
    _root_.Disjoint m1.toFinset m2.toFinset ↔ m1.Disjoint m2 := by
  rw [Finset.disjoint_iff_ne]
  refine' ⟨fun h a ha1 ha2 => _, _⟩
  · rw [← Multiset.mem_toFinset] at ha1 ha2
    exact h _ ha1 _ ha2 rfl
  · rintro h a ha b hb rfl
    rw [Multiset.mem_toFinset] at ha hb
    exact h ha hb
#align multiset.disjoint_to_finset Multiset.disjoint_toFinset

end Multiset

namespace List

variable [DecidableEq α] {l l' : List α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean#L3824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60684812356eac00940fb922aa14757ea39b085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
