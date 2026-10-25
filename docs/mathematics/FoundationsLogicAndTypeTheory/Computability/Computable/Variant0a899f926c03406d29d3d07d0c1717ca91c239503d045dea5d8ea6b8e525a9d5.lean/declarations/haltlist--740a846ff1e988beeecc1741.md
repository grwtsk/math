# haltList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a57e1b4e2b88fe64fc348be20e17e05da26a6632f1c5660b224e53196e77d8f1",
  "kind": "def",
  "lexical_name": "haltList",
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
  "slug": "haltlist--740a846ff1e988beeecc1741",
  "source": {
    "blob": "06f40371e31ddb5299f41d4577c627fc808f209b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant0a899f926c03406d29d3d07d0c1717ca91c239503d045dea5d8ea6b8e525a9d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:740a846ff1e988beeecc17413d6dcf1a1758bd10460904e64703fb19caa870e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Computable/Variant0a899f926c03406d29d3d07d0c1717ca91c239503d045dea5d8ea6b8e525a9d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a57e1b4e2b88fe64fc348be20e17e05da26a6632f1c5660b224e53196e77d8f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def haltList (tm : FinTM2) (s : List (tm.Γ tm.k₁)) : tm.Cfg where
  l := Option.none
  var := tm.initialState
  stk k :=
    @dite (List (tm.Γ k)) (k = tm.k₁) (tm.kDecidableEq k tm.k₁) (fun h => by rw [h]; exact s)
      fun _ => []

@[deprecated (since := "2026-03-06")] protected alias EvalsTo :=
  StateTransition.EvalsTo
@[deprecated (since := "2026-03-06")] protected alias EvalsToInTime :=
  StateTransition.EvalsToInTime

/-- A proof of tm outputting l' when given l. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Computable/Variant0a899f926c03406d29d3d07d0c1717ca91c239503d045dea5d8ea6b8e525a9d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Computable/Variant0a899f926c03406d29d3d07d0c1717ca91c239503d045dea5d8ea6b8e525a9d5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06f40371e31ddb5299f41d4577c627fc808f209b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
