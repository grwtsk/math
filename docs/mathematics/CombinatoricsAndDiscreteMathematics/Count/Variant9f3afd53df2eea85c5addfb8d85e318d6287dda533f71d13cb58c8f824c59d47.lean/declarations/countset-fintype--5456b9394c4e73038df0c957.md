# CountSet.fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23069cfe64de0c25259a1e129534f27047bbf4248d4f1cdc0a835bcdd4c941e1",
  "kind": "def",
  "lexical_name": "CountSet.fintype",
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
  "slug": "countset-fintype--5456b9394c4e73038df0c957",
  "source": {
    "blob": "355439b4d498b976d7772fff78d0ba18a1ca09bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5456b9394c4e73038df0c957cec76a375099aa4174453780e4b78c890ed61d9e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23069cfe64de0c25259a1e129534f27047bbf4248d4f1cdc0a835bcdd4c941e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CountSet.fintype (n : ℕ) : Fintype { i // i < n ∧ p i } := by
  apply Fintype.ofFinset {x ∈ range n | p x}
  intro x
  rw [mem_filter, mem_range]
  rfl

scoped[Count] attribute [instance] Nat.CountSet.fintype

open Count

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant9f3afd53df2eea85c5addfb8d85e318d6287dda533f71d13cb58c8f824c59d47.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355439b4d498b976d7772fff78d0ba18a1ca09bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
