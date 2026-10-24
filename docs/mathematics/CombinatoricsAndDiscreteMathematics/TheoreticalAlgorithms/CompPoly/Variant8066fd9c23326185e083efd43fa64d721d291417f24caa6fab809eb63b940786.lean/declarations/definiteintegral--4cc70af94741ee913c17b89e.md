# definiteIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6430f36833997508a2669c13efebb1b5cd8b18b60da3557777618f19c1d4275",
  "kind": "def",
  "lexical_name": "definiteIntegral",
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
  "slug": "definiteintegral--4cc70af94741ee913c17b89e",
  "source": {
    "blob": "eb51518125dfc0f6a1398b6de99ca21d50fbe23a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cc70af94741ee913c17b89e3f013ea9d0dd7c2276d73108d9bdbcaf0e567af8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6430f36833997508a2669c13efebb1b5cd8b18b60da3557777618f19c1d4275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def definiteIntegral (p : DyPoly) (a b : IntervalDyadic) (prec : Int) : IntervalDyadic :=
  let n := p.coeffs.size
  if n == 0 then IntervalDyadic.singleton LeanCert.Core.Dyadic.zero
  else
    let evalInner (x : IntervalDyadic) : IntervalDyadic :=
      let init := IntervalDyadic.singleton LeanCert.Core.Dyadic.zero
      (List.range n).foldr (fun i acc =>
        let cDown := antiderivativeCoeffDown (p.coeff i) i prec
        let cUp := antiderivativeCoeffUp (p.coeff i) i prec
        let cI : IntervalDyadic := ⟨LeanCert.Core.Dyadic.min cDown cUp, LeanCert.Core.Dyadic.max cDown cUp,
          le_trans (LeanCert.Core.Dyadic.min_toRat_le_left cDown cUp)
            (LeanCert.Core.Dyadic.le_max_toRat_left cDown cUp)⟩
        IntervalDyadic.addRounded cI (IntervalDyadic.mulRounded x acc prec) prec
      ) init

    let innerB := evalInner b
    let innerA := evalInner a
    let antiB := IntervalDyadic.mulRounded b innerB prec
    let antiA := IntervalDyadic.mulRounded a innerA prec
    IntervalDyadic.addRounded antiB (IntervalDyadic.neg antiA) prec

end DyPoly

/-! ### DyTM: Dyadic Taylor Model -/

/-- Dyadic Taylor model: f(x) ∈ P(x - center) + remainder for x ∈ domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb51518125dfc0f6a1398b6de99ca21d50fbe23a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
