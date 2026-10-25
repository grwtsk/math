# causalObserve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:831cc58f88dc38e385079b18add2d73063d1d2741098c5c15edafa8d8efa5c1a",
  "kind": "def",
  "lexical_name": "causalObserve",
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
  "slug": "causalobserve--a2fa077f087916a9a05fe6c3",
  "source": {
    "blob": "c75d0fbf4468355ea9c3ea0a184e6715006ade7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2fa077f087916a9a05fe6c3aa0e1f0d942c90eb10e47a06871a1e991f1706c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:831cc58f88dc38e385079b18add2d73063d1d2741098c5c15edafa8d8efa5c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def causalObserve
    (M : System Input State Resolution)
    (ρ : Resolution) :
    M.CausalState → M.Observation ρ :=
  Quotient.lift (M.observe ρ)
    (fun _ _ h => M.causalEquivalent_observe h ρ)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c75d0fbf4468355ea9c3ea0a184e6715006ade7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
