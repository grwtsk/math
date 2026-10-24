# not_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b9ee61d-1338-4d89-8cce-a37e4a5956c9",
  "kind": "theorem",
  "lexical_name": "not_isField",
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
  "slug": "not-isfield--0ff8ad61499e7a4afc7f13f3",
  "source": {
    "blob": "2ae646305753bf003172fcbb0de3264ced80ce78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ff8ad61499e7a4afc7f13f3c426204e3658ccf11858fb806f0bd050034a5c85",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b9ee61d-1338-4d89-8cce-a37e4a5956c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isField : ¬IsField (𝓞 K) := by
  have h_inj : Function.Injective (algebraMap ℤ (𝓞 K)) := RingHom.injective_int (algebraMap ℤ (𝓞 K))
  intro hf
  exact Int.not_isField
    (((IsIntegralClosure.isIntegral_algebra ℤ K).isField_iff_isField h_inj).mpr hf)
#align number_field.ring_of_integers.not_is_field NumberField.RingOfIntegers.not_isField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantdeb7d3f50664f2bcd721a27dd2ec2953e7bf30c2ada6c23edd9132fa19ceea1d.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae646305753bf003172fcbb0de3264ced80ce78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
