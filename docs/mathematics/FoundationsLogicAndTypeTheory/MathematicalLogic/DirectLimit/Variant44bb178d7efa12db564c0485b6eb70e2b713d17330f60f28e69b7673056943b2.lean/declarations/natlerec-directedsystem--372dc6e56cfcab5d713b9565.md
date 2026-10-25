# natLERec.directedSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dbeb129fdf5c20993182e31ea70acd621712f94482b3f87f1aa3a649f377c2b",
  "kind": "instance",
  "lexical_name": "natLERec.directedSystem",
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
  "slug": "natlerec-directedsystem--372dc6e56cfcab5d713b9565",
  "source": {
    "blob": "0c72a796a5f1f01165340dd4fb39ba9a752878b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant44bb178d7efa12db564c0485b6eb70e2b713d17330f60f28e69b7673056943b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:372dc6e56cfcab5d713b9565d26a5bba59432046132fe71a61c28fcc969de2f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant44bb178d7efa12db564c0485b6eb70e2b713d17330f60f28e69b7673056943b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dbeb129fdf5c20993182e31ea70acd621712f94482b3f87f1aa3a649f377c2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance natLERec.directedSystem : DirectedSystem G' fun i j h => natLERec f' i j h :=
  ⟨fun _ _ => congr (congr rfl (Nat.leRecOn_self _)) rfl,
   fun _ _ _ hij hjk => by simp [Nat.leRecOn_trans hij hjk]⟩

end DirectedSystem

set_option linter.unusedVariables false in
/-- Alias for `Σ i, G i`.

Instead of `Σ i, G i`, we use the alias `Language.Structure.Sigma` which depends on `f`.
This way, Lean can infer what `L` and `f` are in the `Setoid` instance.
Otherwise we have a "cannot find synthesization order" error.
See also the discussion at
https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/local.20instance.20cannot.20find.20synthesization.20order.20in.20porting
-/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant44bb178d7efa12db564c0485b6eb70e2b713d17330f60f28e69b7673056943b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variant44bb178d7efa12db564c0485b6eb70e2b713d17330f60f28e69b7673056943b2.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c72a796a5f1f01165340dd4fb39ba9a752878b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
