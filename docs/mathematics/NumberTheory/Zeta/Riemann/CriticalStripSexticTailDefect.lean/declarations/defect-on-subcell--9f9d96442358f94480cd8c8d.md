# defect_on_subcell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be0283a0-d6d6-20c3-57e1-5dcd2065dd2e",
  "kind": "lemma",
  "lexical_name": "defect_on_subcell",
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
  "slug": "defect-on-subcell--9f9d96442358f94480cd8c8d",
  "source": {
    "blob": "859b686b504c0960ca8aedcf3a49bbc6263371b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f9d96442358f94480cd8c8d06cdd9c22b031e0a9ae603e8be1d19e24666ca21",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be0283a0-d6d6-20c3-57e1-5dcd2065dd2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma defect_on_subcell {s : ℂ} (hs1 : s.re ≤ 1) (i : Fin 16) {t : ℝ}
    (ht : node i.val ≤ t) (ht1 : t ≤ node (i.val + 1)) :
    (1 - cap i) * t ^ (-(7 : ℝ)) ≤ defect s t := by
  have htlo : 1 ≤ t := (node_order i.val).1.trans ht
  have hw0 : 0 ≤ t ^ (-(s.re + 6)) := Real.rpow_nonneg (zero_le_one.trans htlo) _
  have hk := mul_le_mul_of_nonneg_right (kernel_on_subcell i ht ht1) hw0
  have hw : t ^ (-(7 : ℝ)) ≤ t ^ (-(s.re + 6)) :=
    Real.rpow_le_rpow_of_exponent_le htlo (by linarith)
  have hc : 0 ≤ 1 - cap i := sub_nonneg.mpr (cap_bounds i).2
  have hm := mul_le_mul_of_nonneg_left hw hc
  unfold defect
  rw [integrand_norm (zero_lt_one.trans_le htlo)]
  nlinarith

/-- Exact mass of the lower power weight on each subcell; all endpoints are positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `859b686b504c0960ca8aedcf3a49bbc6263371b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
