# liftSemilatticeInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a35503ed7fb473c39f3ef7044af9e9734be9a456394033eb322f8804a8235b37",
  "kind": "def",
  "lexical_name": "liftSemilatticeInf",
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
  "slug": "liftsemilatticeinf--07e91edc079bbac3c1102c6d",
  "source": {
    "blob": "c96d8bb0c1822585ec31a13a9bdc4fa21a255254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 640,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07e91edc079bbac3c1102c6d029ed4c8c340a73d4245259836274514c32f96ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a35503ed7fb473c39f3ef7044af9e9734be9a456394033eb322f8804a8235b37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftSemilatticeInf [SemilatticeInf α] (gi : GaloisInsertion l u) : SemilatticeInf β :=
  { ‹PartialOrder β› with
    inf := fun a b =>
      gi.choice (u a ⊓ u b) <|
        le_inf (gi.gc.monotone_u <| gi.gc.l_le <| inf_le_left)
          (gi.gc.monotone_u <| gi.gc.l_le <| inf_le_right)
    inf_le_left := by simp only [gi.choice_eq]; exact fun a b => gi.gc.l_le inf_le_left
    inf_le_right := by simp only [gi.choice_eq]; exact fun a b => gi.gc.l_le inf_le_right
    le_inf := by
      simp only [gi.choice_eq]
      exact fun a b c hac hbc =>
        (gi.le_l_u a).trans <|
          gi.gc.monotone_l <| le_inf (gi.gc.monotone_u hac) (gi.gc.monotone_u hbc) }
#align galois_insertion.lift_semilattice_inf GaloisInsertion.liftSemilatticeInf

-- See note [reducible non instances]
/-- Lift the suprema and infima along a Galois insertion -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c96d8bb0c1822585ec31a13a9bdc4fa21a255254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
