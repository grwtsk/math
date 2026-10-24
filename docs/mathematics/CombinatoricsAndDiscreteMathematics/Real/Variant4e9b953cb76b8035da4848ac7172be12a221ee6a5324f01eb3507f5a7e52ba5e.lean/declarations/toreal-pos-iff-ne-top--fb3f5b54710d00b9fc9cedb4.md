# toReal_pos_iff_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea876bde-2f6e-765b-44e4-9c954a02261b",
  "kind": "theorem",
  "lexical_name": "toReal_pos_iff_ne_top",
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
  "slug": "toreal-pos-iff-ne-top--fb3f5b54710d00b9fc9cedb4",
  "source": {
    "blob": "cadf19dfbc3842e22b5e3c878078a41ce2becbd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb3f5b54710d00b9fc9cedb409ecb44fc4142548530ee05c2c080dd72e986342",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea876bde-2f6e-765b-44e4-9c954a02261b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toReal_pos_iff_ne_top (p : ℝ≥0∞) [Fact (1 ≤ p)] : 0 < p.toReal ↔ p ≠ ∞ :=
  ⟨fun h hp =>
    have : (0 : ℝ) ≠ 0 := toReal_top ▸ (hp ▸ h.ne : 0 ≠ ∞.toReal)
    this rfl,
    fun h => zero_lt_one.trans_le (p.dichotomy.resolve_left h)⟩

end Real

end ENNReal

namespace Mathlib.Meta.Positivity

open Lean Qq

/-- Extension for the `positivity` tactic: `ENNReal.ofReal`. -/
@[positivity ENNReal.ofReal _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Real/Variant4e9b953cb76b8035da4848ac7172be12a221ee6a5324f01eb3507f5a7e52ba5e.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cadf19dfbc3842e22b5e3c878078a41ce2becbd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
