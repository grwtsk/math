# Ideal.uniqueFactorizationMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1247682b82dc5f55677c1489088725cb3dcc8ea56dd8d659cf21e96c4f82a26",
  "kind": "instance",
  "lexical_name": "Ideal.uniqueFactorizationMonoid",
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
  "slug": "ideal-uniquefactorizationmonoid--9f634503efd344d4b9be2f43",
  "source": {
    "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 629,
    "path": "GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f634503efd344d4b9be2f43de6190e1c8c26829b1d7295a5adbb3242e3f9ff4",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1247682b82dc5f55677c1489088725cb3dcc8ea56dd8d659cf21e96c4f82a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Ideal.uniqueFactorizationMonoid : UniqueFactorizationMonoid (Ideal A) :=
  { irreducible_iff_prime := by
      intro P
      exact ⟨fun hirr => ⟨hirr.ne_zero, hirr.not_isUnit, fun I J => by
        have : P.IsMaximal := by
          refine ⟨⟨mt Ideal.isUnit_iff.mpr hirr.not_isUnit, ?_⟩⟩
          intro J hJ
          obtain ⟨_J_ne, H, hunit, P_eq⟩ := Ideal.dvdNotUnit_iff_lt.mpr hJ
          exact Ideal.isUnit_iff.mp ((hirr.isUnit_or_isUnit P_eq).resolve_right hunit)
        rw [Ideal.dvd_iff_le, Ideal.dvd_iff_le, Ideal.dvd_iff_le, SetLike.le_def, SetLike.le_def,
          SetLike.le_def]
        contrapose!
        rintro ⟨⟨x, x_mem, x_notMem⟩, ⟨y, y_mem, y_notMem⟩⟩
        exact
          ⟨x * y, Ideal.mul_mem_mul x_mem y_mem,
            mt this.isPrime.mem_or_mem (not_or_intro x_notMem y_notMem)⟩⟩, Prime.irreducible⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79b324db55b900a4c86c965f46a6cfa7f456e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
