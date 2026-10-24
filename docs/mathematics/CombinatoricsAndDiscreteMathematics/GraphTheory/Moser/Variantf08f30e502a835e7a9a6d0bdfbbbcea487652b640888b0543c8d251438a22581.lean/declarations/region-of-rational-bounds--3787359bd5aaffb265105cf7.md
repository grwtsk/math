# region_of_rational_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07734574-0a0f-0422-bc60-92a51139ebb0",
  "kind": "lemma",
  "lexical_name": "region_of_rational_bounds",
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
  "slug": "region-of-rational-bounds--3787359bd5aaffb265105cf7",
  "source": {
    "blob": "def128a7751715bce6286ffd953d76a125845d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3787359bd5aaffb265105cf7278b2cbf3f8c9724ee89b41b705de732b03d3193",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07734574-0a0f-0422-bc60-92a51139ebb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma region_of_rational_bounds {x y a b Y H d : ℝ}
    (ha : 0<a) (hb : b<4) (hY : 0≤Y) (_hH : 0≤H) (hd : 0≤d)
    (hl : a≤x^2+y^2) (hu : x^2+y^2≤b)
    (hy : y^2≤Y) (habs : |3*x^2-y^2|≤H) (hg : d≤|x^2+y^2-1|)
    (hnum : Y*H^2<a^3*(1-b/4)*d^2) : ThreeLabelRegion x y := by
  refine ⟨lt_of_lt_of_le ha hl,lt_of_le_of_lt hu hb,?_⟩
  calc y^2*(3*x^2-y^2)^2 ≤ Y*H^2 := by
         have hpow : (3*x^2-y^2)^2≤H^2 := by
           simpa only [sq_abs] using pow_le_pow_left₀ (abs_nonneg _) habs 2
         exact mul_le_mul hy hpow (sq_nonneg _) hY
       _ < a^3*(1-b/4)*d^2 := hnum
       _ ≤ (x^2+y^2)^3*(1-(x^2+y^2)/4)*(x^2+y^2-1)^2 := by
         have hnonneg : 0≤1-b/4 := by linarith
         have hgap : d^2≤(x^2+y^2-1)^2 := by
           simpa only [sq_abs] using pow_le_pow_left₀ hd hg 2
         have hpos : 0≤(x^2+y^2)^3*(1-(x^2+y^2)/4) :=
           mul_nonneg (pow_nonneg (le_trans ha.le hl) _) (by linarith)
         gcongr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `def128a7751715bce6286ffd953d76a125845d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
