# Coframe.copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a7adcccdc01f7b3f59c47e7a1417903d86b932741cb3115ff5b28cb3bea5866",
  "kind": "def",
  "lexical_name": "Coframe.copy",
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
  "slug": "coframe-copy--e36a95f179a4d88b6e354bd7",
  "source": {
    "blob": "ed9a434d81bf562d8a29ded2e865b29ee65e1379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 202,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant137bd114caed5bce4a81392e8b50f6c13ef8ba81304790e660a73428581655c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e36a95f179a4d88b6e354bd748c765f4bbb17db88b2e1c8312e53dafe062f24a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant137bd114caed5bce4a81392e8b50f6c13ef8ba81304790e660a73428581655c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a7adcccdc01f7b3f59c47e7a1417903d86b932741cb3115ff5b28cb3bea5866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Coframe.copy (c : Coframe α) (le : α → α → Prop) (eq_le : le = (by infer_instance : LE α).le)
    (top : α) (eq_top : top = (by infer_instance : Top α).top)
    (bot : α) (eq_bot : bot = (by infer_instance : Bot α).bot)
    (sup : α → α → α) (eq_sup : sup = (by infer_instance : Max α).max)
    (inf : α → α → α) (eq_inf : inf = (by infer_instance : Min α).min)
    (sdiff : α → α → α) (eq_sdiff : sdiff = (by infer_instance : SDiff α).sdiff)
    (hnot : α → α) (eq_hnot : hnot = (by infer_instance : HNot α).hnot)
    (sSup : Set α → α) (eq_sSup : sSup = (by infer_instance : SupSet α).sSup)
    (sInf : Set α → α) (eq_sInf : sInf = (by infer_instance : InfSet α).sInf) : Coframe α where
  toCompleteLattice := CompleteLattice.copy (@Coframe.toCompleteLattice α c)
    le eq_le top eq_top bot eq_bot sup eq_sup inf eq_inf sSup eq_sSup sInf eq_sInf
  __ := CoheytingAlgebra.copy (@Coframe.toCoheytingAlgebra α c)
    le eq_le top eq_top bot eq_bot sup eq_sup inf eq_inf sdiff eq_sdiff hnot eq_hnot

/-- A function to create a provable equal copy of a complete distributive lattice
with possibly different definitional equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant137bd114caed5bce4a81392e8b50f6c13ef8ba81304790e660a73428581655c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant137bd114caed5bce4a81392e8b50f6c13ef8ba81304790e660a73428581655c3.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9a434d81bf562d8a29ded2e865b29ee65e1379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
