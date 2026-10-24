# rpow_lt_rpow_of_exponent_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a54f532-3f1f-7db9-be4b-6d924f82f40c",
  "kind": "theorem",
  "lexical_name": "rpow_lt_rpow_of_exponent_neg",
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
  "slug": "rpow-lt-rpow-of-exponent-neg--2b672158ee906ee50dae03bc",
  "source": {
    "blob": "e04d4237764c32cf42ff2599d709e7ea11b014b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 504,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b672158ee906ee50dae03bc04f77fac1e853223e65bc8922d3c1a0210062e52",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a54f532-3f1f-7db9-be4b-6d924f82f40c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_lt_rpow_of_exponent_neg {x y z : ℝ} (hy : 0 < y) (hxy : y < x) (hz : z < 0) :
    x ^ z < y ^ z := by
  have hx : 0 < x := hy.trans hxy
  rw [←neg_neg z, Real.rpow_neg (le_of_lt hx) (-z), Real.rpow_neg (le_of_lt hy) (-z),
      inv_lt_inv (rpow_pos_of_pos hx _) (rpow_pos_of_pos hy _)]
  exact Real.rpow_lt_rpow (by positivity) hxy <| neg_pos_of_neg hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e04d4237764c32cf42ff2599d709e7ea11b014b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
