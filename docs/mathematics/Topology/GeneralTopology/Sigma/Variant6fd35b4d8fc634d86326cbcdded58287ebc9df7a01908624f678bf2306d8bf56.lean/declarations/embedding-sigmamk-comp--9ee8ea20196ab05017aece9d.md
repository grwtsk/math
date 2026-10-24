# embedding_sigmaMk_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ade2bb0-d130-56f9-65de-c96ad060266f",
  "kind": "theorem",
  "lexical_name": "embedding_sigmaMk_comp",
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
  "slug": "embedding-sigmamk-comp--9ee8ea20196ab05017aece9d",
  "source": {
    "blob": "a21ebe5f161612f1fb4820367cd5e17a9ae7c50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ee8ea20196ab05017aece9dd75afb5b25c6e5edb508ba5ab403035797e62ccb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ade2bb0-d130-56f9-65de-c96ad060266f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedding_sigmaMk_comp [Nonempty X] :
    Embedding (fun g : Σ i, C(X, Y i) ↦ (sigmaMk g.1).comp g.2) where
  toInducing := inducing_sigma.2
    ⟨fun i ↦ (sigmaMk i).inducing_comp embedding_sigmaMk.toInducing, fun i ↦
      let ⟨x⟩ := ‹Nonempty X›
      ⟨_, (isOpen_sigma_fst_preimage {i}).preimage (continuous_eval_const x), fun _ ↦ Iff.rfl⟩⟩
  inj := by
    · rintro ⟨i, g⟩ ⟨i', g'⟩ h
      obtain ⟨rfl, hg⟩ : i = i' ∧ HEq (⇑g) (⇑g') :=
        Function.eq_of_sigmaMk_comp <| congr_arg FunLike.coe h
      simpa using hg

section ConnectedSpace

variable [ConnectedSpace X]

/-- Every continuous map from a connected topological space to the disjoint union of a family of
topological spaces is a composition of the embedding `ContinuousMap.sigmMk i : C(Y i, Σ i, Y i)` for
some `i` and a continuous map `g : C(X, Y i)`. See also `Continuous.exists_lift_sigma` for a version
with unbundled functions and `ContinuousMap.sigmaCodHomeomorph` for a homeomorphism defined using
this fact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a21ebe5f161612f1fb4820367cd5e17a9ae7c50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
