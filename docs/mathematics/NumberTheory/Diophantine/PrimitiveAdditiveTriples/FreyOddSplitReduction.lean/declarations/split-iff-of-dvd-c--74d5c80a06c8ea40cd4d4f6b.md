# split_iff_of_dvd_c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7d4542f-c115-6e84-2d54-1384050e153d",
  "kind": "theorem",
  "lexical_name": "split_iff_of_dvd_c",
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
  "slug": "split-iff-of-dvd-c--74d5c80a06c8ea40cd4d4f6b",
  "source": {
    "blob": "2cfb369566b977c643a8c676df4812d5be08fc73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d5c80a06c8ea40cd4d4f6bb313a04f6421e6a569a10a869ffd8ae9fd320d5d",
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

Occurrence: `result:f7d4542f-c115-6e84-2d54-1384050e153d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_iff_of_dvd_c (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) (hc : p ∣ t.c) :
    HasSplitMultiplicativeReduction (LocalRing p) t.freyCurve ↔
      ∃ r : ZMod p, r^2 = (t.a : ZMod p) := by
  have hbad : p ∣ t.a*t.b*t.c := dvd_mul_of_dvd_right hc _
  have hb := residue_b_of_dvd_c t p hc
  have ha0 : (t.a : ZMod p) ≠ 0 := by
    simpa [hb] using t.freyResidueParameters_nonzero p
  have h16 := frey_sixteen_ne_zero (frey_two_ne_zero_mod p hp2)
  rw [split_iff_residuePolynomial t p hp2 hbad, tangent_polynomial_of_dvd_c t p hc]
  exact splits_scaled_quadratic_iff _ _ (mul_ne_zero h16 (pow_ne_zero 2 ha0))

/-- Covers EVERY odd prime. No good prime is assigned a spurious split flag. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddSplitReduction.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb369566b977c643a8c676df4812d5be08fc73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
