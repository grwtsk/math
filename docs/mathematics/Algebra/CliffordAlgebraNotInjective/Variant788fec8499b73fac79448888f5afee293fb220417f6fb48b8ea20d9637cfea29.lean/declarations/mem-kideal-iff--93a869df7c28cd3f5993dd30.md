# mem_kIdeal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f07047d3-ad4a-c120-d356-d6bd0f85afb1",
  "kind": "theorem",
  "lexical_name": "mem_kIdeal_iff",
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
  "slug": "mem-kideal-iff--93a869df7c28cd3f5993dd30",
  "source": {
    "blob": "2ebf9d27a2d131951441c917f2fa2dc2ce974315",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a869df7c28cd3f5993dd30eaca322273544422d8f00ecfe1dc23d1a083e45b",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f07047d3-ad4a-c120-d356-d6bd0f85afb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_kIdeal_iff (x : MvPolynomial (Fin 3) (ZMod 2)) :
    x ∈ kIdeal ↔ ∀ m : Fin 3 →₀ ℕ, m ∈ x.support → ∃ i, 2 ≤ m i := by
  have :
      kIdeal = Ideal.span ((monomial · (1 : ZMod 2)) '' Set.range (Finsupp.single · 2)) := by
    simp_rw [kIdeal, MvPolynomial.X, monomial_mul_monomial, one_mul, ← Finsupp.single_add,
      ← Set.range_comp, Function.comp_def]
  rw [this, mem_ideal_span_monomial_image]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ebf9d27a2d131951441c917f2fa2dc2ce974315` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
