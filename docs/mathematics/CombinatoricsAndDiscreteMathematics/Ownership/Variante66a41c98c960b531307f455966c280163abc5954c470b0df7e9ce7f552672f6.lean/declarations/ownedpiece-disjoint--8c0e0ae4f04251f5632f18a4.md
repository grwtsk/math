# ownedPiece_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06bcc775-bb50-2ed4-2ee8-e1f308b04ce8",
  "kind": "theorem",
  "lexical_name": "ownedPiece_disjoint",
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
  "slug": "ownedpiece-disjoint--8c0e0ae4f04251f5632f18a4",
  "source": {
    "blob": "e3eb52e60a2844b240f1dc44406dded1e929411d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c0e0ae4f04251f5632f18a4ed0840186e983244f2fa888856836c7326dfda0f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06bcc775-bb50-2ed4-2ee8-e1f308b04ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ownedPiece_disjoint (A : Finset X) (C : Fin n → Finset X)
    (i j : Fin n) (hij : i ≠ j) : Disjoint (ownedPiece A C i) (ownedPiece A C j) := by
  apply Finset.disjoint_left.mpr
  intro x hxi hxj
  obtain ⟨_, hCi, hfirsti⟩ := (mem_ownedPiece A C i x).mp hxi
  obtain ⟨_, hCj, hfirstj⟩ := (mem_ownedPiece A C j x).mp hxj
  rcases lt_or_gt_of_ne hij with hlt | hgt
  · exact hfirstj i hlt hCi
  · exact hfirsti j hgt hCj

/-- Every covered occurrence has a unique owner, which is its least covering index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3eb52e60a2844b240f1dc44406dded1e929411d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
