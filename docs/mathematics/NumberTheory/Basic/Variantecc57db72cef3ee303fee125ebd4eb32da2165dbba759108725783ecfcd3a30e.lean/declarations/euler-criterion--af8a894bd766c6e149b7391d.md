# euler_criterion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95feab06-6ec4-8735-315b-d7680162a223",
  "kind": "theorem",
  "lexical_name": "euler_criterion",
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
  "slug": "euler-criterion--af8a894bd766c6e149b7391d",
  "source": {
    "blob": "578ebdd085f48c54d3dfe32fd36be0af80e42198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8a894bd766c6e149b7391d886ed16f82e4b0f9e149b26e0eab499842c5725f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95feab06-6ec4-8735-315b-d7680162a223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem euler_criterion {a : ZMod p} (ha : a ≠ 0) : IsSquare (a : ZMod p) ↔ a ^ (p / 2) = 1 := by
  apply (iff_congr _ (by simp [Units.ext_iff])).mp (euler_criterion_units p (Units.mk0 a ha))
  simp only [Units.ext_iff, sq, Units.val_mk0, Units.val_mul]
  constructor
  · rintro ⟨y, hy⟩; exact ⟨y, hy.symm⟩
  · rintro ⟨y, rfl⟩
    have hy : y ≠ 0 := by
      rintro rfl
      simp [zero_pow, mul_zero, ne_eq, not_true] at ha
    refine' ⟨Units.mk0 y hy, _⟩; simp
#align zmod.euler_criterion ZMod.euler_criterion

/-- If `a : ZMod p` is nonzero, then `a^(p/2)` is either `1` or `-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578ebdd085f48c54d3dfe32fd36be0af80e42198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
