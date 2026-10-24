# subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1decd33f3c136cfd19623a96fc5a83cf22d8584d17fe9dc0ad98d4b5d2eb7825",
  "kind": "def",
  "lexical_name": "subtype",
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
  "slug": "subtype--c6ffaa7b320840b8f08a8174",
  "source": {
    "blob": "2fd816d6d4b61a12140986f93f2c2757d398e914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 657,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6ffaa7b320840b8f08a8174091203698f951770f6ca3ed0202a2189e1b1caac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1decd33f3c136cfd19623a96fc5a83cf22d8584d17fe9dc0ad98d4b5d2eb7825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def subtype {α} (p : α → Prop) [DecidablePred p] (s : Finset α) : Finset (Subtype p) :=
  (s.filter p).attach.map
    ⟨fun x => ⟨x.1, by simpa using (Finset.mem_filter.1 x.2).2⟩,
     fun x y H => Subtype.eq <| Subtype.mk.inj H⟩
#align finset.subtype Finset.subtype

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd816d6d4b61a12140986f93f2c2757d398e914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
