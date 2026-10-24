# twoTorsionPolynomial_disc_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40299235e00e4015714277ec1638f05fd967a73b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6feb996-264b-cf2e-3b39-92d526f2256f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac806271-dd0f-7710-f488-002a9260d915",
  "kind": "lemma",
  "lexical_name": "twoTorsionPolynomial_disc_ne_zero",
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
  "slug": "twotorsionpolynomial-disc-ne-zero--6dc72e33aae9a47e287971bf",
  "source": {
    "blob": "40299235e00e4015714277ec1638f05fd967a73b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 343,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dc72e33aae9a47e287971bf60711fef33d9c0b017b61da90285b8c11b9659b1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac806271-dd0f-7710-f488-002a9260d915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma twoTorsionPolynomial_disc_ne_zero [Nontrivial R] (hu : IsUnit (2 : R)) (hΔ : IsUnit W.Δ) :
    W.twoTorsionPolynomial.disc ≠ 0 :=
  ((W.twoTorsionPolynomial_disc_isUnit hu).mpr hΔ).ne_zero

end TorsionPolynomial

/-! ## Elliptic curves -/

-- TODO: change to `protected abbrev IsElliptic := IsUnit W.Δ` once #17458 is merged
/-- `WeierstrassCurve.IsElliptic` is a typeclass which asserts that a Weierstrass curve is an
elliptic curve: that its discriminant is a unit. Note that this definition is only mathematically
accurate for certain rings whose Picard group has trivial 12-torsion, such as a field or a PID. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40299235e00e4015714277ec1638f05fd967a73b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
