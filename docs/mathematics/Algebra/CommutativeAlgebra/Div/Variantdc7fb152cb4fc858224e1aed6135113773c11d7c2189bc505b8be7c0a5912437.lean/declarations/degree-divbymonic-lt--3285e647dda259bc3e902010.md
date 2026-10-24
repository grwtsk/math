# degree_divByMonic_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190116ff-9150-4741-cf4f-ed692835c44d",
  "kind": "theorem",
  "lexical_name": "degree_divByMonic_lt",
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
  "slug": "degree-divbymonic-lt--3285e647dda259bc3e902010",
  "source": {
    "blob": "cdc1185195afec228ebf4e7148c738f4053f2e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 304,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3285e647dda259bc3e902010600775b9b3860ed6d86958aeb2dfefd8d99ef243",
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

Occurrence: `result:190116ff-9150-4741-cf4f-ed692835c44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_divByMonic_lt (p : R[X]) {q : R[X]} (hq : Monic q) (hp0 : p ≠ 0)
    (h0q : 0 < degree q) : degree (p /ₘ q) < degree p :=
  if hpq : degree p < degree q then by
    haveI := Nontrivial.of_polynomial_ne hp0
    rw [(divByMonic_eq_zero_iff hq).2 hpq, degree_eq_natDegree hp0]
    exact WithBot.bot_lt_coe _
  else by
    haveI := Nontrivial.of_polynomial_ne hp0
    rw [← degree_add_divByMonic hq (not_lt.1 hpq), degree_eq_natDegree hq.ne_zero,
      degree_eq_natDegree (mt (divByMonic_eq_zero_iff hq).1 hpq)]
    exact
      WithBot.coe_lt_coe.2
        (Nat.lt_add_of_pos_left (WithBot.coe_lt_coe.1 <|
          by simpa [Nat.cast_withBot, degree_eq_natDegree hq.ne_zero] using h0q))
#align polynomial.degree_div_by_monic_lt Polynomial.degree_divByMonic_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantdc7fb152cb4fc858224e1aed6135113773c11d7c2189bc505b8be7c0a5912437.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc1185195afec228ebf4e7148c738f4053f2e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
