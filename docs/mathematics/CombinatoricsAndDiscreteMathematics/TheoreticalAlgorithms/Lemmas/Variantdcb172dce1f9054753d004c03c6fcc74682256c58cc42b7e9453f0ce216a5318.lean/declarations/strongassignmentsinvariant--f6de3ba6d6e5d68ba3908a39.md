# StrongAssignmentsInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:408d4996cbacd9a4f578126acc5f0fdf6e3d8524cddbea8af1bc88c90d2a8e7e",
  "kind": "def",
  "lexical_name": "StrongAssignmentsInvariant",
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
  "slug": "strongassignmentsinvariant--f6de3ba6d6e5d68ba3908a39",
  "source": {
    "blob": "da61d82f9deb10d6942ade1202678203edbe816f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6de3ba6d6e5d68ba3908a3950467e031c47031fcf1fdf9331f0c9c38421ae6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:408d4996cbacd9a4f578126acc5f0fdf6e3d8524cddbea8af1bc88c90d2a8e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StrongAssignmentsInvariant {n : Nat} (f : DefaultFormula n) : Prop :=
  ∃ hsize : f.assignments.size = n, ∀ i : PosFin n, ∀ b : Bool,
    hasAssignment b (f.assignments[i.1]'(by rw [hsize]; exact i.2.2)) →
    (unit (i, b)) ∈ toList f

/--
This invariant states that if the `assignments` field of a default formula `f` indicates that `f`
contains an assignment `b` at index `i`, then the unit literal `(i, b)` is entailed by `f`. This is
distinct from the `StrongAssignmentsInvariant` defined above in that the entailment described here
does not require explicitly containing the literal `(i, b)`. For example, if `f` contains `(i, b) ∨ (j, b')`
as well as `(i, b) ∨ (j, ¬b')`, then the `AssignmentsInvariant` would permit the `assignments` field of `f`
to contain assignment `b` at index `i`, but the `StrongAssignmentsInvariant` would not.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb172dce1f9054753d004c03c6fcc74682256c58cc42b7e9453f0ce216a5318.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da61d82f9deb10d6942ade1202678203edbe816f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
