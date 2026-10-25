# preprocessFactsLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1be93b3f32dc4f8ae51a1ea896e2ccb198e08e061a6b88aae0eb2199511b6154",
  "kind": "def",
  "lexical_name": "preprocessFactsLinear",
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
  "slug": "preprocessfactslinear--f45bc506a039d0a1ac1c298b",
  "source": {
    "blob": "a5a0d2f5bcc6da698d110bd27b73bc3ca1d2694e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f45bc506a039d0a1ac1c298b6204f638c6d31a84997cf582baf648e123a535bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1be93b3f32dc4f8ae51a1ea896e2ccb198e08e061a6b88aae0eb2199511b6154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preprocessFactsLinear (g : MVarId) (facts : Array AtomicFact) :
    MetaM <| Array AtomicFact := g.withContext do
  let mut res : Array AtomicFact := #[]
  for fact in facts do
    match fact with
    | .lt lhs rhs proof =>
      res := res.push <| .ne lhs rhs (← mkAppM ``LT.lt.ne #[proof])
      res := res.push <| .le lhs rhs (← mkAppM ``LT.lt.le #[proof])
    | .nle lhs rhs proof =>
      res := res.push <| .ne lhs rhs (← mkAppM ``ne_of_not_le #[proof])
      res := res.push <| .le rhs lhs (← mkAppM ``le_of_not_le #[proof])
    | .nlt lhs rhs proof =>
      res := res.push <| .le rhs lhs (← mkAppM ``le_of_not_lt #[proof])
    | .eq lhs rhs proof =>
      res := res.push <| .le lhs rhs (← mkAppM ``le_of_eq #[proof])
      res := res.push <| .le rhs lhs (← mkAppM ``ge_of_eq #[proof])
    | _ =>
      res := res.push fact
  return res


end Mathlib.Tactic.Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variantb844a8fa22b47c2968947e859bbdfd093b14d86c5b37de68ab9ca3ab190c67d8.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a0d2f5bcc6da698d110bd27b73bc3ca1d2694e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
