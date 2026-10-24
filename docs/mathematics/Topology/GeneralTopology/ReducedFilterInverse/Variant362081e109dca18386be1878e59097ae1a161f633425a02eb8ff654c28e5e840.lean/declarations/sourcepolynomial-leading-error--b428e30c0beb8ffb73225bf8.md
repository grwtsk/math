# sourcePolynomial_leading_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:741cf064-6b31-a3ed-cbb3-6203f7f99de1",
  "kind": "theorem",
  "lexical_name": "sourcePolynomial_leading_error",
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
  "slug": "sourcepolynomial-leading-error--b428e30c0beb8ffb73225bf8",
  "source": {
    "blob": "074c85ba77c38b1d12238ec978ebb8ba7d48246d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b428e30c0beb8ffb73225bf8f07afb181435f1ba3b40acd02ca098bfcaf06a8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:741cf064-6b31-a3ed-cbb3-6203f7f99de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePolynomial_leading_error (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖transformPolynomial w - w^4‖ ≤ 265 * ‖w‖^3 := by
  have h2 : ‖w‖ ≤ ‖w‖^2 := by nlinarith [norm_nonneg w]
  have h3 : ‖w‖^2 ≤ ‖w‖^3 := by nlinarith [sq_nonneg (‖w‖ - 1)]
  have hb : ‖transformPolynomial w - w^4‖ ≤
      10 * ‖w‖^3 + 45 * ‖w‖^2 + 105 * ‖w‖ + 105 := by
    have he : transformPolynomial w - w^4 = -10*w^3 + 45*w^2 - 105*w + 105 := by
      unfold transformPolynomial
      ring
    rw [he]
    calc
      _ ≤ ‖-10*w^3 + 45*w^2 - 105*w‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖-10*w^3 + 45*w^2‖ + ‖105*w‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖-10*w^3‖ + ‖45*w^2‖) + ‖105*w‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

/-- The inward exponential gap is strictly positive for every positive inward shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c85ba77c38b1d12238ec978ebb8ba7d48246d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
