# center_eq_scalar_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b2d35f1-b3c0-7c23-2907-a1e2da621731",
  "kind": "theorem",
  "lexical_name": "center_eq_scalar_image",
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
  "slug": "center-eq-scalar-image--234fc36a5bedf41f17283c2f",
  "source": {
    "blob": "e2d6c623f91f28a42862ddb6bfd5047b9976a263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 417,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant3528791d8748a7c54b7ba38e26d8b272ce60683a9d37cca938f06d28431e587d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:234fc36a5bedf41f17283c2fdc8732750dc12648f27584ac3bb297d7642c8893",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant3528791d8748a7c54b7ba38e26d8b272ce60683a9d37cca938f06d28431e587d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b2d35f1-b3c0-7c23-2907-a1e2da621731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_eq_scalar_image :
    Set.center (Matrix n n α) = scalar n '' Set.center α := Set.ext fun x ↦ by
  simp_rw [Set.mem_image, Semigroup.mem_center_iff]
  refine ⟨fun hx ↦ ?_, fun ⟨x, hx, eq⟩ y ↦ eq ▸ scalar_commute x (hx · |>.symm) y |>.symm⟩
  refine (isEmpty_or_nonempty n).elim (fun _ ↦ ⟨0, by simp [nontriviality]⟩) fun ⟨i⟩ ↦ ?_
  obtain ⟨x, rfl⟩ := mem_range_scalar_iff_commute_single'.mpr fun _ _ ↦ hx _
  exact ⟨x, by simpa using fun r ↦ congr($(hx (single i i r)) i i)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant3528791d8748a7c54b7ba38e26d8b272ce60683a9d37cca938f06d28431e587d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant3528791d8748a7c54b7ba38e26d8b272ce60683a9d37cca938f06d28431e587d.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2d6c623f91f28a42862ddb6bfd5047b9976a263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
