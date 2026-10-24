# add''_char

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a165b975-feba-0964-756c-6f6e05a71a40",
  "kind": "theorem",
  "lexical_name": "add''_char",
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
  "slug": "add-char--b7fac11c73daa96257b40f1c",
  "source": {
    "blob": "8665646926aa906ea2dc54a0cb34b8fb656ece0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 80,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7fac11c73daa96257b40f1c5e1afd2a537b415d012d1c1df1ab4c859ccb8322",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a165b975-feba-0964-756c-6f6e05a71a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem add''_char (r₁ : X) (s₁ : S) (r₂ : X) (s₂ : S) (rb : R) (sb : R)
    (hb : sb * s₁ = rb * s₂) (h : sb * s₁ ∈ S) :
    add'' r₁ s₁ r₂ s₂ = (sb • r₁ + rb • r₂) /ₒ ⟨sb * s₁, h⟩ := by
  simp only [add'']
  have ha := ore_eq (s₁ : R) s₂
  generalize oreNum (s₁ : R) s₂ = ra at *
  generalize oreDenom (s₁ : R) s₂ = sa at *
  rw [oreDiv_eq_iff]
  rcases oreCondition sb sa with ⟨rc, sc, hc⟩
  have : sc * rb * s₂ = rc * ra * s₂ := by
    rw [mul_assoc rc, ← ha, ← mul_assoc, ← hc, mul_assoc, mul_assoc, hb]
  rcases ore_right_cancel _ _ s₂ this with ⟨sd, hd⟩
  use sd * sc
  use sd * rc
  simp only [smul_add, smul_smul, Submonoid.smul_def, Submonoid.coe_mul]
  constructor
  · rw [mul_assoc _ _ rb, hd, mul_assoc, hc, mul_assoc, mul_assoc]
  · rw [mul_assoc, ← mul_assoc (sc : R), hc, mul_assoc, mul_assoc]

attribute [local instance] OreLocalization.oreEqv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8ac4acee3ff93d5e06363eac8a0e2da73e1e0c8f0672b2454bba82176e137131.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8665646926aa906ea2dc54a0cb34b8fb656ece0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
