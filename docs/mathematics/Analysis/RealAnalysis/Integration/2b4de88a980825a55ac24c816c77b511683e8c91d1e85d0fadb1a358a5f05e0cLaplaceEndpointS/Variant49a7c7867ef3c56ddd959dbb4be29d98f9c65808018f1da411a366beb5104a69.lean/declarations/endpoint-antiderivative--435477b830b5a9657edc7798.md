# endpoint_antiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71fd33b5-e3a1-fcc3-3103-8152b8b263f8",
  "kind": "theorem",
  "lexical_name": "endpoint_antiderivative",
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
  "slug": "endpoint-antiderivative--435477b830b5a9657edc7798",
  "source": {
    "blob": "224d6b5485d2673822244b2f715504855aa2b4a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:435477b830b5a9657edc7798b279bd681ec59d62c27075e56231d06b08151e42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71fd33b5-e3a1-fcc3-3103-8152b8b263f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_antiderivative (z : ℂ) (hz : z ≠ 0) (w : ℂ) :
    HasDerivAt (fun w ↦ Complex.exp (z * w) * endpointPrimitive z w)
      ((1 - w ^ 2) ^ 4 * Complex.exp (z * w)) w := by
  have h := hasDerivAt_id w
  have h2 := h.pow 2
  have h3 := h.pow 3
  have h4 := h.pow 4
  have h5 := h.pow 5
  have h6 := h.pow 6
  have h7 := h.pow 7
  have h8 := h.pow 8
  have h0 := (((h8.sub (h6.const_mul 4)).add (h4.const_mul 6)).sub
    (h2.const_mul 4)).add_const 1
  have h1 := (((h7.const_mul 8).sub (h5.const_mul 24)).add
    (h3.const_mul 24)).sub (h.const_mul 8)
  have h2j := (((h6.const_mul 56).sub (h4.const_mul 120)).add
    (h2.const_mul 72)).sub_const 8
  have h3j := ((h5.const_mul 336).sub (h3.const_mul 480)).add (h.const_mul 144)
  have h4j := ((h4.const_mul 1680).sub (h2.const_mul 1440)).add_const 144
  have h5j := (h3.const_mul 6720).sub (h.const_mul 2880)
  have h6j := (h2.const_mul 20160).sub_const 2880
  have hp := ((((((((h0.div_const z).sub (h1.div_const (z ^ 2))).add
    (h2j.div_const (z ^ 3))).sub (h3j.div_const (z ^ 4))).add
    (h4j.div_const (z ^ 5))).sub (h5j.div_const (z ^ 6))).add
    (h6j.div_const (z ^ 7))).sub ((h.const_mul 40320).div_const (z ^ 8))).add_const
    (40320 / z ^ 9)
  have he := (h.const_mul z).cexp
  convert he.mul hp using 1 <;> try rfl
  all_goals
    try funext u
    simp only [id_eq, Pi.pow_apply, Pi.sub_apply, Pi.add_apply]
    norm_num
    field_simp [hz]
    ring


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant49a7c7867ef3c56ddd959dbb4be29d98f9c65808018f1da411a366beb5104a69.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224d6b5485d2673822244b2f715504855aa2b4a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
