# ofPowerSeries_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "791b8c529534024ad46d06248621083886e908e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a7e097d-c56e-ea2c-92b2-b2b4bf1948c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa651c85-0cb9-b7ed-7787-190ddc4d90c2",
  "kind": "theorem",
  "lexical_name": "ofPowerSeries_X_pow",
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
  "slug": "ofpowerseries-x-pow--1bf06f888820128d70513a00",
  "source": {
    "blob": "791b8c529534024ad46d06248621083886e908e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 140,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bf06f888820128d70513a001d470d226013fbb3d92e958e7f8d89b14718285e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa651c85-0cb9-b7ed-7787-190ddc4d90c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPowerSeries_X_pow {R} [Semiring R] (n : ℕ) :
    ofPowerSeries Γ R (PowerSeries.X ^ n) = single (n : Γ) 1 := by
  simp

set_option backward.isDefEq.respectTransparency false in
-- Lemmas converting Hahn series over a finite index type to and from `MvPowerSeries`
/-- The ring `R⟦σ →₀ ℕ⟧` is isomorphic to `MvPowerSeries σ R` for a `Finite` `σ`.
We take the index set of the hahn series to be `Finsupp` rather than `pi`,
even though we assume `Finite σ` as this is more natural for alignment with `MvPowerSeries`.
After importing `Mathlib/Algebra/Order/Pi.lean` the ring `R⟦σ → ℕ⟧` could be constructed
instead.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791b8c529534024ad46d06248621083886e908e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
