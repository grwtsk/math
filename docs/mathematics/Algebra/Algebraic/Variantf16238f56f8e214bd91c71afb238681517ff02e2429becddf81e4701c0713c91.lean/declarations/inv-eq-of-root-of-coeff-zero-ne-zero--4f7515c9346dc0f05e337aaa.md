# inv_eq_of_root_of_coeff_zero_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3666d27f-3b71-6aef-e7f3-fd0b33b7d147",
  "kind": "theorem",
  "lexical_name": "inv_eq_of_root_of_coeff_zero_ne_zero",
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
  "slug": "inv-eq-of-root-of-coeff-zero-ne-zero--4f7515c9346dc0f05e337aaa",
  "source": {
    "blob": "8dcf46a9be16b35f1bb3c06e21313e0244d2f58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 386,
    "path": "GRWTSK/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f7515c9346dc0f05e337aaa7d585ddb59cf1963b4d16951223d8b7f7a2fb70b",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3666d27f-3b71-6aef-e7f3-fd0b33b7d147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_eq_of_root_of_coeff_zero_ne_zero {x : L} {p : K[X]} (aeval_eq : aeval x p = 0)
    (coeff_zero_ne : p.coeff 0 ≠ 0) : x⁻¹ = -(aeval x (divX p) / algebraMap _ _ (p.coeff 0)) := by
  convert inv_eq_of_aeval_divX_ne_zero (p := p) (L := L)
    (mt (fun h => (algebraMap K L).injective ?_) coeff_zero_ne) using 1
  · rw [aeval_eq, zero_sub, div_neg]
  rw [RingHom.map_zero]
  convert aeval_eq
  conv_rhs => rw [← divX_mul_X_add p]
  rw [AlgHom.map_add, AlgHom.map_mul, h, zero_mul, zero_add, aeval_C]
#align inv_eq_of_root_of_coeff_zero_ne_zero inv_eq_of_root_of_coeff_zero_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dcf46a9be16b35f1bb3c06e21313e0244d2f58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
