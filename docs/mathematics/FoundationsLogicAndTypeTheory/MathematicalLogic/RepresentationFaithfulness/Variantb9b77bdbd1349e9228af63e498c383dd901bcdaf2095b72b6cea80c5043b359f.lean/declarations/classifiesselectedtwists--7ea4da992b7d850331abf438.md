# ClassifiesSelectedTwists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66ba0c685556a05cfb2d49e8fdcfced130ccbe1c26d49712c53b1cdc5d6fd725",
  "kind": "structure",
  "lexical_name": "ClassifiesSelectedTwists",
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
  "slug": "classifiesselectedtwists--7ea4da992b7d850331abf438",
  "source": {
    "blob": "1603f3567713d041a49c4101183b9215bddd46c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ea4da992b7d850331abf43872fc3ad45a6245719bd2c05566e33763982ced9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66ba0c685556a05cfb2d49e8fdcfced130ccbe1c26d49712c53b1cdc5d6fd725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClassifiesSelectedTwists
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α)
    (T : SelectedTwistGroup α) where
  faithful : Faithful R
  surjective_on : SurjectiveOn R T

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1603f3567713d041a49c4101183b9215bddd46c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
