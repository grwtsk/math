# mul_div_self_cancel_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41bd63f8-f804-038b-134f-6483c5937e8a",
  "kind": "theorem",
  "lexical_name": "mul_div_self_cancel_iff",
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
  "slug": "mul-div-self-cancel-iff--d7eab1cd0f2b254f257810a2",
  "source": {
    "blob": "31ed17cf50d649e16f6c45c755a5464ca7474f94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 481,
    "path": "GRWTSK/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7eab1cd0f2b254f257810a20c8c1ac22f4d7623883ec933e5fdc237c06c1a84",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41bd63f8-f804-038b-134f-6483c5937e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_div_self_cancel_iff {I : FractionalIdeal R₁⁰ K} : I * (1 / I) = 1 ↔ ∃ J, I * J = 1 :=
  ⟨fun h => ⟨1 / I, h⟩, fun ⟨J, hJ⟩ => by rwa [← eq_one_div_of_mul_eq_one_right I J hJ]⟩

variable {K' : Type*} [Field K'] [Algebra R₁ K'] [IsFractionRing R₁ K']

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant3edc5be042fda84712171d5947dec32c1b1e42a4903313265d9dacb42ed071bf.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ed17cf50d649e16f6c45c755a5464ca7474f94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
