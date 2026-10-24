# heckeScheduleTransformV1_cosets_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a060f08-b07b-c514-55e6-503caefdbe48",
  "kind": "theorem",
  "lexical_name": "heckeScheduleTransformV1_cosets_exact",
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
  "slug": "heckescheduletransformv1-cosets-exact--1d8f1d496945b82a765dbd50",
  "source": {
    "blob": "b0d4ae5bde183a92560a999e207c7515a7ef6c97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 321,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8f1d496945b82a765dbd501ecc6ddbfb92724c9d678659a0ac3516e54c9fa5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a060f08-b07b-c514-55e6-503caefdbe48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heckeScheduleTransformV1_cosets_exact
    (n : Nat) (input : ScheduleVectorV1) (result : HeckeScheduleTransformV1)
    (accepted : heckeScheduleTransformV1 n input = some result) :
    result.n = n ∧ result.input = input ∧
      result.cosets = heckeCosets n ∧
      result.cosetCount = (heckeCosets n).length ∧
      result.authority = .presentationOnly := by
  simp only [heckeScheduleTransformV1] at accepted
  split at accepted <;> try contradiction
  split at accepted <;> try contradiction
  rcases Option.bind_eq_some_iff.mp accepted with
    ⟨accumulated, haccumulated, hfirstBind⟩
  rcases Option.bind_eq_some_iff.mp hfirstBind with
    ⟨first, hfirst, hsecondBind⟩
  rcases Option.bind_eq_some_iff.mp hsecondBind with
    ⟨second, hsecond, hresult⟩
  have heq := Option.some.inj hresult
  subst result
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

/-! ## Classical-action authority firewall -/

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d4ae5bde183a92560a999e207c7515a7ef6c97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
