# le_inf_support_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:778097d0-afde-22c4-c4bb-912a62cf4614",
  "kind": "theorem",
  "lexical_name": "le_inf_support_pow",
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
  "slug": "le-inf-support-pow--af7e0ba765e59d619da7237e",
  "source": {
    "blob": "a635e211d305433b2ea705c510342ead9c29ea0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 169,
    "path": "GRWTSK/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af7e0ba765e59d619da7237eeac8f5f3d4640e931a6278ee030322e6b78e5fb7",
  "verification": {
    "reference": "docs/verification/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:778097d0-afde-22c4-c4bb-912a62cf4614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_inf_support_pow (degt0 : 0 ≤ degt 0) (degtm : ∀ a b, degt a + degt b ≤ degt (a + b))
    (n : ℕ) (f : R[A]) : n • f.coeff.support.inf degt ≤ (f ^ n).coeff.support.inf degt := by
  refine OrderDual.ofDual_le_ofDual.mpr <| sup_support_pow_le (OrderDual.ofDual_le_ofDual.mp ?_)
      (fun a b => OrderDual.ofDual_le_ofDual.mp ?_) n f
  · exact degt0
  · exact degtm _ _

end AddMonoids

end Semiring

section CommutativeLemmas

variable [CommSemiring R] [AddCommMonoid A] [AddCommMonoid B] [AddLeftMono B] [AddRightMono B]
  [AddCommMonoid T] [AddLeftMono T] [AddRightMono T]
  {degb : A → B} {degt : A → T}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Degree/Variantbaef09d3937497184515472ba472a7acc68f3645a4de719f8f361ab0990f4f00.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a635e211d305433b2ea705c510342ead9c29ea0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
