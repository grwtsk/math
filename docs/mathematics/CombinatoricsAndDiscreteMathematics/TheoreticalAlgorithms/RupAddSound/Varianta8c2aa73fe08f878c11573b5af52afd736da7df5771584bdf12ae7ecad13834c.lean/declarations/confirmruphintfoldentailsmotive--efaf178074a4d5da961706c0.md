# ConfirmRupHintFoldEntailsMotive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:135b12aa14b9231a863e764cd7696f431d3d8e62f393984706fd61f1884979d7",
  "kind": "def",
  "lexical_name": "ConfirmRupHintFoldEntailsMotive",
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
  "slug": "confirmruphintfoldentailsmotive--efaf178074a4d5da961706c0",
  "source": {
    "blob": "66745d1bb2d437fb4d1dad9c4d52328a43dd4910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 367,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efaf178074a4d5da961706c00ae8e5bf1a66d35433beda06e5593b7a27fef18e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:135b12aa14b9231a863e764cd7696f431d3d8e62f393984706fd61f1884979d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConfirmRupHintFoldEntailsMotive {n : Nat} (f : DefaultFormula n) (_idx : Nat)
    (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool) :
    Prop :=
  acc.1.size = n ∧ Limplies (PosFin n) f acc.1 ∧ (acc.2.2.1 → Incompatible (PosFin n) acc.1 f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddSound/Varianta8c2aa73fe08f878c11573b5af52afd736da7df5771584bdf12ae7ecad13834c.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66745d1bb2d437fb4d1dad9c4d52328a43dd4910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
