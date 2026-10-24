# ceil_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71accecd-9490-2f64-a3ac-bc3fc97cf2d0",
  "kind": "theorem",
  "lexical_name": "ceil_lt_mul",
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
  "slug": "ceil-lt-mul--7415cddc2ba081443d343c04",
  "source": {
    "blob": "e3b152982f972ac8125d780b5fec3c1d428682dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 331,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7415cddc2ba081443d343c04ae51352c203e033a12b37fccf8fa75686f284b7f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71accecd-9490-2f64-a3ac-bc3fc97cf2d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ceil_lt_mul {x : ℝ} (hx : 50 / 19 ≤ x) : (⌈x⌉₊ : ℝ) < 1.38 * x := by
  refine (ceil_lt_add_one <| hx.trans' <| by norm_num).trans_le ?_
  rw [← le_sub_iff_add_le', ← sub_one_mul]
  have : (1.38 : ℝ) = 69 / 50 := by norm_num
  rwa [this, show (69 / 50 - 1 : ℝ) = (50 / 19)⁻¹ by norm_num1, ←
    div_eq_inv_mul, one_le_div]
  norm_num1

end NumericalBounds

/-- The (almost) optimal value of `n` in `Behrend.bound_aux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b152982f972ac8125d780b5fec3c1d428682dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
