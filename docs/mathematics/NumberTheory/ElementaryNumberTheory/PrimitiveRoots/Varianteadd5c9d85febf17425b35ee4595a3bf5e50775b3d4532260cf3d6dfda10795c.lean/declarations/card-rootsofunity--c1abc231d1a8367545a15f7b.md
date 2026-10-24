# card_rootsOfUnity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dc72743-18fa-2d7a-f828-dd12d9ad4eff",
  "kind": "theorem",
  "lexical_name": "card_rootsOfUnity'",
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
  "slug": "card-rootsofunity--c1abc231d1a8367545a15f7b",
  "source": {
    "blob": "9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 598,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1abc231d1a8367545a15f7bb260d68f59ca364fcbd2720c5a3682b2da6226e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dc72743-18fa-2d7a-f828-dd12d9ad4eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_rootsOfUnity' {n : ℕ} [NeZero n] (h : IsPrimitiveRoot ζ n) :
    Fintype.card (rootsOfUnity n R) = n := by
  let e := h.zmodEquivZPowers
  have : Fintype (Subgroup.zpowers ζ) := Fintype.ofEquiv _ e.toEquiv
  calc
    Fintype.card (rootsOfUnity n R) = Fintype.card (Subgroup.zpowers ζ) :=
      Fintype.card_congr <| by rw [h.zpowers_eq]
    _ = Fintype.card (ZMod n) := Fintype.card_congr e.toEquiv.symm
    _ = n := ZMod.card n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
