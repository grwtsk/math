# piMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:922bfd93-f798-7c94-8bbe-50a5b0d6e281",
  "kind": "theorem",
  "lexical_name": "piMap",
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
  "slug": "pimap--f147a45fbd1e0b38f45afca2",
  "source": {
    "blob": "814ba603d25c5dd377b35ce721271aaf81abc815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 405,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f147a45fbd1e0b38f45afca21bf712225cbafe959c172afe8620045083f79be4",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:922bfd93-f798-7c94-8bbe-50a5b0d6e281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem piMap {X Y : ι → Type*} [∀ i, TopologicalSpace (X i)]
    [∀ i, TopologicalSpace (Y i)] {f₀ f₁ : ∀ i, C(X i, Y i)} (F : ∀ i, Homotopic (f₀ i) (f₁ i)) :
    Homotopic (.piMap f₀) (.piMap f₁) :=
  .pi fun i ↦ .hcomp (.refl <| .eval i) (F i)

end Homotopic

/--
The type of homotopies between `f₀ f₁ : C(X, Y)`, where the intermediate maps satisfy the predicate
`P : C(X, Y) → Prop`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variantea63603cd183622ec9b0f2fba58c9da02c7673030edd5661d41fc8c0b31e4f48.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `814ba603d25c5dd377b35ce721271aaf81abc815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
