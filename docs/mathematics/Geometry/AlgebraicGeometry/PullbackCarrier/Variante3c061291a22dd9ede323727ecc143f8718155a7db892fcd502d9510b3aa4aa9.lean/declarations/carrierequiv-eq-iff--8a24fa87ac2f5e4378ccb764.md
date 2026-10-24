# carrierEquiv_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:743cd92d-8508-6a15-9830-ac645fb0ae04",
  "kind": "lemma",
  "lexical_name": "carrierEquiv_eq_iff",
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
  "slug": "carrierequiv-eq-iff--8a24fa87ac2f5e4378ccb764",
  "source": {
    "blob": "50f49d3f9d8021d6e1e3b37570beff003876f333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 257,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a24fa87ac2f5e4378ccb7647c3845f954eaf0c482cb25e519493eea1d30b526",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:743cd92d-8508-6a15-9830-ac645fb0ae04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma carrierEquiv_eq_iff {T₁ T₂ : Σ T : Triplet f g, Spec T.tensor} :
    T₁ = T₂ ↔ ∃ e : T₁.1 = T₂.1, Spec.map (Triplet.tensorCongr e).inv T₁.2 = T₂.2 := by
  constructor
  · rintro rfl
    simp
  · obtain ⟨T, _⟩ := T₁
    obtain ⟨T', _⟩ := T₂
    rintro ⟨rfl : T = T', e⟩
    simpa [e]

set_option backward.isDefEq.respectTransparency.types false in
/--
The points of the underlying topological space of `X ×[S] Y` bijectively correspond to
pairs of triples `x : X`, `y : Y`, `s : S` with `f x = s = f y` and prime ideals of
`κ(x) ⊗[κ(s)] κ(y)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f49d3f9d8021d6e1e3b37570beff003876f333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
