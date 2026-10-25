# extend_function_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e33b5e6f-f767-db80-c43f-68eb36744f4e",
  "kind": "theorem",
  "lexical_name": "extend_function_finite",
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
  "slug": "extend-function-finite--8ced3a714f2425e9108a14aa",
  "source": {
    "blob": "d113b35b3d19c5d27cea94671fea561b0543b5e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1217,
    "line": 1209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ced3a714f2425e9108a14aa88ac615a27827f92ac109b2a4a653b5f7c38f3f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e33b5e6f-f767-db80-c43f-68eb36744f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1209–1217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_function_finite {α : Type u} {β : Type v} [Finite α] {s : Set α} (f : s ↪ β)
    (h : Nonempty (α ≃ β)) : ∃ g : α ≃ β, ∀ x : s, g x = f x := by
  apply extend_function.{v, u} f
  cases' id h with g
  rw [← lift_mk_eq.{u, v, max u v}] at h
  rw [← lift_mk_eq.{u, v, max u v}, mk_compl_eq_mk_compl_finite_lift.{u, v, max u v} h]
  rw [mk_range_eq_lift.{u, v, max u v}]; exact f.2
#align cardinal.extend_function_finite Cardinal.extend_function_finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean#L1209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d113b35b3d19c5d27cea94671fea561b0543b5e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
