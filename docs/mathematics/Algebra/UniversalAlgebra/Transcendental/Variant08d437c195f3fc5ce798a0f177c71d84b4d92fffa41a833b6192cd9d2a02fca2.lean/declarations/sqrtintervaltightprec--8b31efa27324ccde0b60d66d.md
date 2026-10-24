# sqrtIntervalTightPrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1a2c9c44feef61c2085ef1c410809b2776b736c8ada1a3990316411d65f09e5",
  "kind": "def",
  "lexical_name": "sqrtIntervalTightPrec",
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
  "slug": "sqrtintervaltightprec--8b31efa27324ccde0b60d66d",
  "source": {
    "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 570,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b31efa27324ccde0b60d66dd37486fd53f9718fa3eed8304af86484bb3f3724",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1a2c9c44feef61c2085ef1c410809b2776b736c8ada1a3990316411d65f09e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sqrtIntervalTightPrec (I : IntervalRat) : IntervalRat :=
  if h : 0 ≤ I.lo then
    ⟨sqrtRatLowerPrec I.lo, max (sqrtRatUpperPrec I.hi) 1,
     by
       simp only [le_max_iff]
       left
       have hlo_le_hi : I.lo ≤ I.hi := I.le
       have h1 : (sqrtRatLowerPrec I.lo : ℝ) ≤ Real.sqrt I.lo := sqrtRatLowerPrec_le_sqrt h sqrtScaleBits
       have h2 : Real.sqrt I.hi ≤ (sqrtRatUpperPrec I.hi : ℝ) :=
         sqrt_le_sqrtRatUpperPrec (le_trans h hlo_le_hi) sqrtScaleBits
       have h3 : Real.sqrt I.lo ≤ Real.sqrt I.hi := Real.sqrt_le_sqrt (by exact_mod_cast hlo_le_hi)
       have h4 : (sqrtRatLowerPrec I.lo : ℝ) ≤ (sqrtRatUpperPrec I.hi : ℝ) := le_trans h1 (le_trans h3 h2)
       exact_mod_cast h4⟩
  else
    ⟨0, max (sqrtRatUpperPrec I.hi) 1, le_sup_of_le_right rfl⟩

/-- Membership theorem for sqrtIntervalTightPrec -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
