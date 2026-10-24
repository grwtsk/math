# mapOfSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47822f099014b0ca5fd50ca62246d33c9a80c352f4b82d79de4ff55e3f0e15f1",
  "kind": "def",
  "lexical_name": "mapOfSurjective",
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
  "slug": "mapofsurjective--b8d2ad73a425678fa8bc361c",
  "source": {
    "blob": "08e67de8ed3b83103036fe954fb9121d161725b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 640,
    "path": "GRWTSK/Algebra/GroupTheory/Congruence/Variant83c4c92c6e432e8029ea8eaa3b8de6a5648caa616e52d3c0f5f02e8ea8f383e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8d2ad73a425678fa8bc361c6c707a79bcf8958cfc397e755231ecb4ecc532e4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Congruence/Variant83c4c92c6e432e8029ea8eaa3b8de6a5648caa616e52d3c0f5f02e8ea8f383e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47822f099014b0ca5fd50ca62246d33c9a80c352f4b82d79de4ff55e3f0e15f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapOfSurjective (f : M → N) (H : ∀ x y, f (x * y) = f x * f y) (h : mulKer f H ≤ c)
    (hf : Surjective f) : Con N :=
  { c.toSetoid.mapOfSurjective f h hf with
    mul' := fun h₁ h₂ => by
      rcases h₁ with ⟨a, b, rfl, rfl, h1⟩
      rcases h₂ with ⟨p, q, rfl, rfl, h2⟩
      exact ⟨a * p, b * q, by rw [H], by rw [H], c.mul h1 h2⟩ }
#align con.map_of_surjective Con.mapOfSurjective
#align add_con.map_of_surjective AddCon.mapOfSurjective

/-- A specialization of 'the smallest congruence relation containing a congruence relation `c`
    equals `c`'. -/
@[to_additive "A specialization of 'the smallest additive congruence relation containing
an additive congruence relation `c` equals `c`'."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Congruence/Variant83c4c92c6e432e8029ea8eaa3b8de6a5648caa616e52d3c0f5f02e8ea8f383e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Congruence/Variant83c4c92c6e432e8029ea8eaa3b8de6a5648caa616e52d3c0f5f02e8ea8f383e0.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e67de8ed3b83103036fe954fb9121d161725b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
