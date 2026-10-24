# sample_encloses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b6cfea7-01b3-157f-094a-3a9a55dc19ce",
  "kind": "lemma",
  "lexical_name": "sample_encloses",
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
  "slug": "sample-encloses--cf1e36ae2cf87c78b7c78727",
  "source": {
    "blob": "6f0f9d4865816456615a9d30d698f7c6c2c26c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1e36ae2cf87c78b7c7872722435c254f9ebe50302f205544107fc1244495d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b6cfea7-01b3-157f-094a-3a9a55dc19ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sample_encloses (k : Fin 3) :
    ‖(base k : ℂ) ^ (-center) - sample k‖ ≤ (1 / 16384 : ℝ) := by
  let e := negativePowerEnclosureOfBounds (base_bounds k).1 (logRecord k)
    center (by norm_num [center]) 80 (57 / 4) 22 center_norm
    (by norm_num [logRecord])
    (by have h := logCenter_bound k; change (57 / 4 : ℝ) * |logCenter k| ≤ 22; linarith)
    (by norm_num)
  have he := e.encloses
  change ‖(base k : ℂ) ^ (-center) - complexExpTaylor 80 (-center * (logCenter k : ℂ))‖ ≤
    2 * ((57 / 4 : ℝ) * (1 / 1048576)) + complexExpTaylorRadius 80 22 at he
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans (sample_rounding k)
  calc
    _ ≤ ‖(base k : ℂ) ^ (-center) - complexExpTaylor 80 (-center * (logCenter k : ℂ))‖ +
        ‖complexExpTaylor 80 (-center * (logCenter k : ℂ)) - sample k‖ := norm_sub_triangle _ _ _
    _ ≤ 2 * ((57 / 4 : ℝ) * (1 / 1048576)) + complexExpTaylorRadius 80 22 + 1 / 1048576 :=
      add_le_add he hr
    _ ≤ _ := by norm_num [complexExpTaylorRadius]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f0f9d4865816456615a9d30d698f7c6c2c26c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
