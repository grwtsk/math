# split_iff_of_dvd_a

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6389794d-fefb-c88c-0fcb-29e2ff98d051",
  "kind": "theorem",
  "lexical_name": "split_iff_of_dvd_a",
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
  "slug": "split-iff-of-dvd-a--5024d3ae5f38b4cad234b06e",
  "source": {
    "blob": "2cfb369566b977c643a8c676df4812d5be08fc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5024d3ae5f38b4cad234b06e20541935b980617c3150aaad372472b5565a53b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6389794d-fefb-c88c-0fcb-29e2ff98d051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_iff_of_dvd_a (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (ha : p ∣ t.a) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      ∃ r : ZMod p, r^2 = (t.b : ZMod p) := by
  have hbad : p ∣ t.a*t.b*t.c := dvd_mul_of_dvd_left (dvd_mul_of_dvd_left ha _) _
  have ha0 := (ZMod.natCast_eq_zero_iff t.a p).mpr ha
  have hb0 : (t.b : ZMod p) ≠ 0 := by
    simpa only [ha0, ne_eq, not_true_eq_false, false_or] using t.freyResidueParameters_nonzero p
  have h16 := frey_sixteen_ne_zero (frey_two_ne_zero_mod p hp2)
  rw [split_iff_residuePolynomial t p hp2 hbad, tangent_polynomial_of_dvd_a t p ha]
  exact splits_scaled_quadratic_iff _ _ (mul_ne_zero h16 (pow_ne_zero 2 hb0))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb369566b977c643a8c676df4812d5be08fc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
