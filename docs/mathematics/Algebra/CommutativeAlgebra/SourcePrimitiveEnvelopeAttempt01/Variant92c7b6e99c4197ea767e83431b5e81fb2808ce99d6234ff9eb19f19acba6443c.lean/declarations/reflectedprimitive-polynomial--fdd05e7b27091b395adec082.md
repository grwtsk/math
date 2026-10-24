# reflectedPrimitive_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d564073-fbc7-5ced-80cc-5ffc8df641fc",
  "kind": "theorem",
  "lexical_name": "reflectedPrimitive_polynomial",
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
  "slug": "reflectedprimitive-polynomial--fdd05e7b27091b395adec082",
  "source": {
    "blob": "de0f767c525ded1656eaf3e2238008647c790eb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 116,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt01/Variant92c7b6e99c4197ea767e83431b5e81fb2808ce99d6234ff9eb19f19acba6443c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdd05e7b27091b395adec08254d119f64726b785c190ca988d1d54a7ba0b796e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt01/Variant92c7b6e99c4197ea767e83431b5e81fb2808ce99d6234ff9eb19f19acba6443c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d564073-fbc7-5ced-80cc-5ffc8df641fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPrimitive_polynomial (A y : ℝ) :
    reflectedPrimitive A y=Real.exp (-y/2)/sourceNormalization A*
      (A^7*overlapPolynomial2 ((2*A-y)/A)-A^8*overlapPolynomial1 ((2*A-y)/A)+
        A^9*overlapPolynomial0 ((2*A-y)/A)/4) := by
  unfold reflectedPrimitive physicalScale positivePrimitive
  have he : Real.exp (-A)*Real.exp ((2*A-y)/2)=Real.exp (-y/2) := by
    rw [←Real.exp_add]
    congr 1
    ring
  by_cases hA : A=0
  · subst A
    norm_num
  · field_simp
    nlinarith [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt01/Variant92c7b6e99c4197ea767e83431b5e81fb2808ce99d6234ff9eb19f19acba6443c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt01/Variant92c7b6e99c4197ea767e83431b5e81fb2808ce99d6234ff9eb19f19acba6443c.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de0f767c525ded1656eaf3e2238008647c790eb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
