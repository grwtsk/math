# subBarycenter_weights_apply_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:417b85a7-3e35-9249-a946-f5a8b2912dec",
  "kind": "lemma",
  "lexical_name": "subBarycenter_weights_apply_eq_zero",
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
  "slug": "subbarycenter-weights-apply-eq-zero--4c1da360b34baa8fb32b4083",
  "source": {
    "blob": "6f0e4b31e805781bee1e5c74b84361acb1229646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c1da360b34baa8fb32b408398245a1976e172453549c1096ad809fe181332d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:417b85a7-3e35-9249-a946-f5a8b2912dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subBarycenter_weights_apply_eq_zero
    (S : Finset M) (hS : S.Nonempty) (m : M) (hm : m ∉ S) :
    (subBarycenter (K := K) S hS).weights m = 0 := by
  simp only [weights_subBarycenter, Finsupp.coe_finsetSum, Finset.sum_apply]
  rw [Finset.sum_eq_zero]
  intro x hx
  rw [Finsupp.single_apply_eq_zero]
  rintro rfl
  exact (hm hx).elim

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f0e4b31e805781bee1e5c74b84361acb1229646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
