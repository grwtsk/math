# Iter.atIdxSlow?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:729e0ece417412195da8ed2d0c6e6a5431a8e3f3ca3d2ba22c2c17922ac02583",
  "kind": "def",
  "lexical_name": "Iter.atIdxSlow?",
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
  "slug": "iter-atidxslow--8b7f11109230a6acce5d994c",
  "source": {
    "blob": "d42deac0870351403475e3a3a43b34bcf10f0fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b7f11109230a6acce5d994ce81d3e63bdac751e6f25b443e2a7e372ab60bc5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:729e0ece417412195da8ed2d0c6e6a5431a8e3f3ca3d2ba22c2c17922ac02583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.atIdxSlow? {α β} [Iterator α Id β]
    (n : Nat) (it : Iter (α := α) β) : Option β :=
  WellFounded.extrinsicFix₂ (C₂ := fun _ _ => Option β) (α := Iter (α := α) β) (β := fun _ => Nat)
    (InvImage
      (Prod.Lex WellFoundedRelation.rel IterM.TerminationMeasures.Productive.Rel)
      (fun p => (p.2, p.1.finitelyManySkips!)))
    (fun it n recur =>
      match it.step with
      | .yield it' out _ =>
        match n with
        | 0 => some out
        | k + 1 => recur it' k (by decreasing_tactic)
      | .skip it' _ => recur it' n (by decreasing_tactic)
      | .done _ => none) it n

-- We provide the functional induction principle by hand because `atIdxSlow?` is implemented using
-- `extrinsicFix₂` and not using well-founded recursion.
/--
An induction principle for `Iter.atIdxSlow?`.

This lemma provides a functional induction principle for reasoning about `Iter.atIdxSlow? n it`.

The induction follows the structure of iterator steps.
- base case: when we reach the desired index (`n = 0`) and get a `.yield` step
- inductive case: when we have a `.yield` step but need to continue (`n > 0`)
- skip case: when we encounter a `.skip` step and continue with the same index
- done case: when the iterator is exhausted and we return `none`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant81ea04ff28b2d1fd44416abc04ff32960cf2977a26fbe743de2bbd130b58a68b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42deac0870351403475e3a3a43b34bcf10f0fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
