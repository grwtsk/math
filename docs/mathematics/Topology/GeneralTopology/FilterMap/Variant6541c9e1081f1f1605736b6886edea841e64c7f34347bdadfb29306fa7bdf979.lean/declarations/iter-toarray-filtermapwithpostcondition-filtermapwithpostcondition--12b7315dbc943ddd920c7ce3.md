# Iter.toArray_filterMapWithPostcondition_filterMapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46e1dad7-0d93-340a-9bec-0dbaea44e853",
  "kind": "theorem",
  "lexical_name": "Iter.toArray_filterMapWithPostcondition_filterMapWithPostcondition",
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
  "slug": "iter-toarray-filtermapwithpostcondition-filtermapwithpostcondition--12b7315dbc943ddd920c7ce3",
  "source": {
    "blob": "d815c3bd8873c023b5eaadb78aa6c51806910ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 415,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant6541c9e1081f1f1605736b6886edea841e64c7f34347bdadfb29306fa7bdf979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12b7315dbc943ddd920c7ce36c93af432581617bf4645f9de480c89ecbf0340e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variant6541c9e1081f1f1605736b6886edea841e64c7f34347bdadfb29306fa7bdf979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46e1dad7-0d93-340a-9bec-0dbaea44e853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.toArray_filterMapWithPostcondition_filterMapWithPostcondition
    [Monad m] [LawfulMonad m] [Monad n] [LawfulMonad n] [MonadLiftT m n] [LawfulMonadLiftT m n]
    [Finite α Id]
    {f : β → PostconditionT m (Option γ)} {g : γ → PostconditionT n (Option δ)} :
    ((it.filterMapWithPostcondition f).filterMapWithPostcondition g).toArray =
      (it.filterMapWithPostcondition (m := n) (fun b => do
        match ← (haveI : MonadLift m n := ⟨monadLift⟩; f b) with
        | none => return none
        | some fb => g fb)).toArray := by
  simp only [Iter.filterMapWithPostcondition]
  rw [IterM.toArray_filterMapWithPostcondition_filterMapWithPostcondition,
    instMonadLiftTOfMonadLift_instMonadLiftTOfPure]
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant6541c9e1081f1f1605736b6886edea841e64c7f34347bdadfb29306fa7bdf979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant6541c9e1081f1f1605736b6886edea841e64c7f34347bdadfb29306fa7bdf979.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d815c3bd8873c023b5eaadb78aa6c51806910ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
