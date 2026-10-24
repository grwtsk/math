# degree_add_divByMonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e214822-252b-0131-2ecc-5244c3621ff4",
  "kind": "theorem",
  "lexical_name": "degree_add_divByMonic",
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
  "slug": "degree-add-divbymonic--f31df3a0d8e3f4c3f140e4e2",
  "source": {
    "blob": "cdc1185195afec228ebf4e7148c738f4053f2e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 270,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f31df3a0d8e3f4c3f140e4e264d515c968ec6abb4780062deb967e83dc070533",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e214822-252b-0131-2ecc-5244c3621ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_add_divByMonic (hq : Monic q) (h : degree q ≤ degree p) :
    degree q + degree (p /ₘ q) = degree p := by
  nontriviality R
  have hdiv0 : p /ₘ q ≠ 0 := by rwa [Ne.def, divByMonic_eq_zero_iff hq, not_lt]
  have hlc : leadingCoeff q * leadingCoeff (p /ₘ q) ≠ 0 := by
    rwa [Monic.def.1 hq, one_mul, Ne.def, leadingCoeff_eq_zero]
  have hmod : degree (p %ₘ q) < degree (q * (p /ₘ q)) :=
    calc
      degree (p %ₘ q) < degree q := degree_modByMonic_lt _ hq
      _ ≤ _ := by
        rw [degree_mul' hlc, degree_eq_natDegree hq.ne_zero, degree_eq_natDegree hdiv0, ←
            Nat.cast_add, Nat.cast_withBot, Nat.cast_withBot, WithBot.coe_le_coe]
        exact Nat.le_add_right _ _
  calc
    degree q + degree (p /ₘ q) = degree (q * (p /ₘ q)) := Eq.symm (degree_mul' hlc)
    _ = degree (p %ₘ q + q * (p /ₘ q)) := (degree_add_eq_right_of_degree_lt hmod).symm
    _ = _ := congr_arg _ (modByMonic_add_div _ hq)
#align polynomial.degree_add_div_by_monic Polynomial.degree_add_divByMonic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc1185195afec228ebf4e7148c738f4053f2e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
