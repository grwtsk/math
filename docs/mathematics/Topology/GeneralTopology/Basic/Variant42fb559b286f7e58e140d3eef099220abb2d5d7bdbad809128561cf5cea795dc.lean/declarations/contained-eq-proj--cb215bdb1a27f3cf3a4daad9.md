# contained_eq_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1fea3f9-058f-ac64-f9cf-8d10f8c31507",
  "kind": "theorem",
  "lexical_name": "contained_eq_proj",
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
  "slug": "contained-eq-proj--cb215bdb1a27f3cf3a4daad9",
  "source": {
    "blob": "8b4928c820efb0d262bba745da216ca269b97e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 546,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb215bdb1a27f3cf3a4daad91b11fcfa509a54f29f182d913bdd91be70549ee6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1fea3f9-058f-ac64-f9cf-8d10f8c31507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contained_eq_proj (o : Ordinal) (h : contained C o) :
    C = π C (ord I · < o) := by
  have := proj_prop_eq_self C (ord I · < o)
  simp only [ne_eq, Bool.not_eq_false, π] at this
  exact (this (fun i x hx ↦ h x hx i)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant42fb559b286f7e58e140d3eef099220abb2d5d7bdbad809128561cf5cea795dc.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4928c820efb0d262bba745da216ca269b97e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
